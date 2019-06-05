import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import java.util.ArrayList;

@ManagedBean(name = "saleBean", eager = true)
public class SaleBean {
	int id;
	int customerId;
	int vehicleId;

	ArrayList<SaleBean> salesList;
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
	 * @return the customerId
	 */
	public int getCustomerId() {
		return customerId;
	}

	/**
	 * @return the vehicleId
	 */
	public int getVehicleId() {
		return vehicleId;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	/**
	 * @param vehicleId the vehicleId to set
	 */
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
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

	public ArrayList<SaleBean> getSalesList() {
		System.out.println("Execute getSalesList()");
		try {
			salesList = new ArrayList<SaleBean>();

			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM sales");

			while (resultObj.next()) {
				SaleBean sale = new SaleBean();
				sale.setId(resultObj.getInt("id"));
				sale.setCustomerId(resultObj.getInt("customer_id"));
				sale.setVehicleId(resultObj.getInt("vehicle_id"));
				salesList.add(sale);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return salesList;
	}

	public String save(SaleBean newSaleObj) {
		System.out.println("Execute save()");
		try {
			pstmt = this.getDatabase().prepareStatement("INSERT INTO sales (customer_id, vehicle_id) VALUES (?, ?)");
			pstmt.setInt(1, newSaleObj.getCustomerId());
			pstmt.setInt(2, newSaleObj.getVehicleId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/index.xhtml?faces-redirect=true";
	}

	public String delete(int id) {
		System.out.println("Execute delete()");
		try {
			pstmt = this.getDatabase().prepareStatement("DELETE FROM sales WHERE id = " + id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/index.xhtml?faces-redirect=true";
	}

	public String edit(int id) {
		System.out.println("Execute edit()");
		SaleBean sale = null;

		try {
			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM sales WHERE id=" + (id));
			resultObj.next();

			sale = new SaleBean();
			sale.setId(resultObj.getInt("id"));
			sale.setId(resultObj.getInt("id"));
			sale.setCustomerId(resultObj.getInt("customer_id"));
			sale.setVehicleId(resultObj.getInt("vehicle_id"));
			context.getSessionMap().put("saleToUpdate", sale);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/sales/edit.xhtml?faces-redirect=true";
	}

	public String update(SaleBean saleToUpdate) {
		System.out.println("Execute update()");
		try {
			pstmt = this.getDatabase().prepareStatement("UPDATE sales SET customer_id=?, vehicle_id=? WHERE id=?");
			pstmt.setInt(1, saleToUpdate.getCustomerId());
			pstmt.setInt(2, saleToUpdate.getVehicleId());
			pstmt.setInt(3, saleToUpdate.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/index.xhtml?faces-redirect=true";
	}
}