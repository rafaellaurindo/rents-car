import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.Map;

@ManagedBean(name="customerBean", eager=true)
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
	Map<String, Object> sessionData = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	
	public int getId() {
		return id;
	}
	public String getAddress() {
		return address;
	}
	public String getCpf() {
		return cpf;
	}
	public String getEmail() {
		return email;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	

	public ArrayList<CustomerBean> customersList(){
		System.out.println("Get customersList");
		try {
			customersList = new ArrayList<CustomerBean>();
			
			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM customers");
			
			while (resultObj.next()){
				CustomerBean custObj = new CustomerBean();
				custObj.setId(resultObj.getInt("id"));
				custObj.setName(resultObj.getString("name"));
				custObj.setEmail(resultObj.getString("email"));
				custObj.setCpf(resultObj.getString("cpf"));
				custObj.setPhone(resultObj.getString("phone"));
				custObj.setAddress(resultObj.getString("address"));
				customersList.add(custObj);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return customersList;
	}	
	
	public String save(CustomerBean newCustomerObj)
	{
		try {
			pstmt = this.getDatabase().prepareStatement("INSERT INTO customers (name, email, cpf, phone, address) values (?, ?, ?, ?, ?)");
			pstmt.setString(1, newCustomerObj.getName());
			pstmt.setString(2, newCustomerObj.getEmail());
			pstmt.setString(3, newCustomerObj.getCpf());
			pstmt.setString(4, newCustomerObj.getPhone());
			pstmt.setString(5, newCustomerObj.getAddress());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "/customers/index.xhtml?faces-redirect=true";
	}
	
	public String delete(int id)
	{
		try {
			pstmt = this.getDatabase().prepareStatement("DELETE FROM customers WHERE id = " + id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "/customers/index.xhtml?faces-redirect=true";
	}
}

