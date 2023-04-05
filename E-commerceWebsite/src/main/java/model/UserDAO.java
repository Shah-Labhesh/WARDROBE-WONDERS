package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import controller.User;

public class UserDAO extends HttpServlet {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}

	public static String registerUser(User urInfo) throws SQLException {

		try {

			String addQuery = "INSERT INTO user_registration (User_name,User_phone,User_email,User_password) values (?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, urInfo.getUserName());
			pt.setNString(2, urInfo.getUserContact());
			pt.setNString(3, urInfo.getUserEmail());
			pt.setNString(4, urInfo.getEncryptPassword());
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
	
	public static ResultSet loginUser(String phone, String password) throws SQLException {

		try {

			String addQuery = "Select * from user_registration where User_name =? and User_password=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, phone);
			pt.setNString(2, password);
			ResultSet rs = pt.executeQuery();
			
			return rs;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	
	public static ResultSet loginUser(String phone, String password) throws ClassNotFoundException, SQLException {
		
		String query = "SELECT * FROM user_registration WHERE User_phone = ? AND User_password = ?";
		Connection con = getConnection();
		PreparedStatement stmt = con.prepareStatement(query);
	    stmt.setString(1, phone);
	    stmt.setString(2, password);
	    
	    ResultSet rs = stmt.executeQuery();
	      
	    return rs;  
	}

}
