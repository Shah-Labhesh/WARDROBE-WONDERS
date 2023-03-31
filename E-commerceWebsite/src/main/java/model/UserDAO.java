package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

public class UserDAO extends HttpServlet{
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");  
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url,userName,password);
		return con;
	}
	
	public static String registerUser(String name, String phone, String email, String password, String confirmPassword) throws SQLException {
		
		
		try {
			if (password.equals(confirmPassword)) {
			String addQuery = "INSERT INTO user_registration values (?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			 pt.setNString(1, name);
			 pt.setNString(2, phone);
			 pt.setNString(3, email);
			 pt.setNString(4, password);
			 int rows = pt.executeUpdate();
			 if (rows>=1) {
				 return "Successfully Registered";
			 }
			 con.close();
			return null; 
			}else {
				return "Password didn't matched!";
			}
			
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
