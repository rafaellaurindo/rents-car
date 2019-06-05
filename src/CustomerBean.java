import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import java.util.ArrayList;

@ManagedBean(name = "customerBean", eager = true)
public class CustomerBean {
	int id;
	String address;
	String cpf;
	String email;
	String name;
	String phone;
	ArrayList<CustomerBean> customersList;
	Connection dbConnection;
	PreparedStatement pstmt;
	ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @return the cpf
	 */
	public String getCpf() {
		return cpf;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @param cpf the cpf to set
	 */
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Connection getDatabase() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/rentscar", dbUsername = "root", dbPassword = "";
			this.dbConnection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
		} catch (Exception e) {
			System.out.println(e);
		}

		return this.dbConnection;
	}

	public ArrayList<CustomerBean> getCustomersList() {
		System.out.println("Execute getCustomersList()");
		try {
			customersList = new ArrayList<CustomerBean>();

			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM customers");

			while (resultObj.next()) {
				CustomerBean custObj = new CustomerBean();
				custObj.setId(resultObj.getInt("id"));
				custObj.setAddress(resultObj.getString("address"));
				custObj.setCpf(resultObj.getString("cpf"));
				custObj.setEmail(resultObj.getString("email"));
				custObj.setName(resultObj.getString("name"));
				custObj.setPhone(resultObj.getString("phone"));
				customersList.add(custObj);
			}
			stmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return customersList;
	}

	public String save(CustomerBean newCustomerObj) {
		System.out.println("Execute save()");
		try {
			pstmt = this.getDatabase().prepareStatement(
					"INSERT INTO customers (address, cpf, email, name, phone) VALUES (?, ?, ?, ?, ?)");
			pstmt.setString(1, newCustomerObj.getAddress());
			pstmt.setString(2, newCustomerObj.getCpf());
			pstmt.setString(3, newCustomerObj.getEmail());
			pstmt.setString(4, newCustomerObj.getName());
			pstmt.setString(5, newCustomerObj.getPhone());
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/customers/index.xhtml?faces-redirect=true";
	}

	public String delete(int id) {
		System.out.println("Execute delete()");
		try {
			pstmt = this.getDatabase().prepareStatement("DELETE FROM customers WHERE id = " + id);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/customers/index.xhtml?faces-redirect=true";
	}

	public CustomerBean selectACustomer(int id) {
		CustomerBean customer = new CustomerBean();

		try {
			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM customers WHERE id=" + (id));
			resultObj.next();

			customer.setId(resultObj.getInt("id"));
			customer.setName(resultObj.getString("name"));
			customer.setEmail(resultObj.getString("email"));
			customer.setCpf(resultObj.getString("cpf"));
			customer.setPhone(resultObj.getString("phone"));
			customer.setAddress(resultObj.getString("address"));
			stmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return customer;
	}

	public String edit(int id) {
		System.out.println("Execute edit()");
		CustomerBean customer = null;

		try {
			customer = this.selectACustomer(id);
			context.getSessionMap().put("customerToUpdate", customer);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/customers/edit.xhtml?faces-redirect=true";
	}

	public String update(CustomerBean customerToUpdate) {
		System.out.println("Execute update()");
		try {
			pstmt = this.getDatabase()
					.prepareStatement("UPDATE customers SET address=?, cpf=?, email=?, name=?, phone=? WHERE id=?");
			pstmt.setString(1, customerToUpdate.getAddress());
			pstmt.setString(2, customerToUpdate.getCpf());
			pstmt.setString(3, customerToUpdate.getEmail());
			pstmt.setString(4, customerToUpdate.getName());
			pstmt.setString(5, customerToUpdate.getPhone());
			pstmt.setInt(6, customerToUpdate.getId());
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/customers/index.xhtml?faces-redirect=true";
	}
}
