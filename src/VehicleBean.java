import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import java.util.ArrayList;

@ManagedBean(name = "vehicleBean", eager = true)
public class VehicleBean {
	int id;
	String brand;
	String color;
	String model;
	String plate;
	Float price;
	String year;

	ArrayList<VehicleBean> vehiclesList;
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
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}

	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}

	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}

	/**
	 * @return the plate
	 */
	public String getPlate() {
		return plate;
	}

	/**
	 * @return the price
	 */
	public Float getPrice() {
		return price;
	}

	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}

	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}

	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}

	/**
	 * @param plate the plate to set
	 */
	public void setPlate(String plate) {
		this.plate = plate;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(Float price) {
		this.price = price;
	}

	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
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

	public ArrayList<VehicleBean> getVehiclesList() {
		System.out.println("Execute getVehiclesList()");
		try {
			vehiclesList = new ArrayList<VehicleBean>();

			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM vehicles");

			while (resultObj.next()) {
				VehicleBean vehicle = new VehicleBean();
				vehicle.setId(resultObj.getInt("id"));
				vehicle.setBrand(resultObj.getString("brand"));
				vehicle.setColor(resultObj.getString("color"));
				vehicle.setModel(resultObj.getString("model"));
				vehicle.setPlate(resultObj.getString("plate"));
				vehicle.setPrice(resultObj.getFloat("price"));
				vehicle.setYear(resultObj.getString("year"));
				vehiclesList.add(vehicle);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return vehiclesList;
	}

	public String save(VehicleBean newVehicleObj) {
		System.out.println("Execute save()");
		try {
			pstmt = this.getDatabase().prepareStatement(
					"INSERT INTO vehicles (brand, color, model, plate, year, price) VALUES (?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, newVehicleObj.getBrand());
			pstmt.setString(2, newVehicleObj.getColor());
			pstmt.setString(3, newVehicleObj.getModel());
			pstmt.setString(4, newVehicleObj.getPlate());
			pstmt.setString(5, newVehicleObj.getYear());
			pstmt.setFloat(6, newVehicleObj.getPrice());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/vehicles/index.xhtml?faces-redirect=true";
	}

	public String delete(int id) {
		System.out.println("Execute delete()");
		try {
			pstmt = this.getDatabase().prepareStatement("DELETE FROM vehicles WHERE id = " + id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/vehicles/index.xhtml?faces-redirect=true";
	}

	public String edit(int id) {
		System.out.println("Execute edit()");
		VehicleBean vehicle = null;

		try {
			Statement stmt = this.getDatabase().createStatement();
			ResultSet resultObj = stmt.executeQuery("SELECT * FROM vehicles WHERE id=" + (id));
			resultObj.next();

			vehicle = new VehicleBean();
			vehicle.setId(resultObj.getInt("id"));
			vehicle.setBrand(resultObj.getString("brand"));
			vehicle.setColor(resultObj.getString("color"));
			vehicle.setModel(resultObj.getString("model"));
			vehicle.setPlate(resultObj.getString("plate"));
			vehicle.setPrice(resultObj.getFloat("price"));
			vehicle.setYear(resultObj.getString("year"));
			context.getSessionMap().put("vehicleToUpdate", vehicle);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/vehicles/edit.xhtml?faces-redirect=true";
	}

	public String update(VehicleBean vehicleToUpdate) {
		System.out.println("Execute update()");
		try {
			pstmt = this.getDatabase().prepareStatement(
					"UPDATE vehicles SET brand=?, color=?, model=?, plate=?, year=?, price=? WHERE id=?");
			pstmt.setString(1, vehicleToUpdate.getBrand());
			pstmt.setString(2, vehicleToUpdate.getColor());
			pstmt.setString(3, vehicleToUpdate.getModel());
			pstmt.setString(4, vehicleToUpdate.getPlate());
			pstmt.setString(5, vehicleToUpdate.getYear());
			pstmt.setFloat(6, vehicleToUpdate.getPrice());
			pstmt.setInt(7, vehicleToUpdate.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/vehicles/index.xhtml?faces-redirect=true";
	}
}