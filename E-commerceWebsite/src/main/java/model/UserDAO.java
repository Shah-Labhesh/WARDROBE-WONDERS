package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	
	public static ResultSet loginUser(String phone) throws SQLException {

		try {

			String query = "Select * from users where User_phone =? ";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(query);
			pt.setNString(1, phone);
			ResultSet rs = pt.executeQuery();
			return rs;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	
	

}
