package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}

	public static String registerUser(User urInfo) throws SQLException {

		try {
			String addQuery = "INSERT INTO users (User_name,User_phone,User_email,User_address,User_image,User_password) values (?,?,?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, urInfo.getUserName());
			pt.setNString(2, urInfo.getUserContact());
			pt.setNString(3, urInfo.getUserEmail());
			pt.setNString(4, urInfo.getUserAddress());
			pt.setNString(5, urInfo.getUserImagePath());
			pt.setNString(6, urInfo.getEncryptPassword());
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully Registered";
			}
			con.close();
			return null;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public static User loginUser(String phone) throws SQLException {
		User ur = null;
		try {

			String query = "Select * from users where User_phone =? ";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(query);
			pt.setNString(1, phone);
			ResultSet rs = pt.executeQuery();
			while (rs.next()) {
				String name = rs.getNString("User_name");
				String email = rs.getNString("User_email");
				String address = rs.getNString("User_address");
				String img = rs.getNString("User_image");
				String contact = rs.getNString("User_phone");
				String password = rs.getNString("User_password");

				ur = new User(name, contact, email, address, img, password);
				
			}
			return ur;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public static User getUserDetailsByPhone(String phone) throws SQLException {
		User ur = null;

		try {

			String query = "Select * from users where User_phone =? ";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(query);
			pt.setNString(1, phone);
			ResultSet rs = pt.executeQuery();
			while (rs.next()) {
				String name = rs.getNString("User_name");
				String email = rs.getNString("User_email");
				String address = rs.getNString("User_address");
				String img = rs.getNString("User_image");
				String contact = rs.getNString("User_phone");
				String password = rs.getNString("User_password");

				ur = new User(name, contact, email, address, img, password);
				
			}
			return ur;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
	
	public static String updateUser(User urInfo) throws SQLException {
		try {
			String updateQuery = "UPDATE users SET User_name=?, User_email=?, User_address=?, User_image=?, User_password=? WHERE User_phone=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(updateQuery);
			pt.setNString(1, urInfo.getUserName());
			pt.setNString(2, urInfo.getUserEmail());
			pt.setNString(3, urInfo.getUserAddress());
			pt.setNString(4, urInfo.getUserImagePath());
			pt.setNString(5, urInfo.getEncryptPassword());
			pt.setNString(6, urInfo.getUserContact());
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully Updated";
			}
			con.close();
			return null;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public static String changePassword(String user,String pass) throws SQLException {
		try {
			String updateQuery = "UPDATE users SET User_password=? WHERE User_phone=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(updateQuery);
			pt.setNString(1, pass);
			pt.setNString(2, user);
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully Updated";
			}
			con.close();
			return null;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
