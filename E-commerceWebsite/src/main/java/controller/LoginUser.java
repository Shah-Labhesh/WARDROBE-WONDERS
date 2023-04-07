package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.AESEncryption;
import model.UserDAO;

import java.sql.*;

@WebServlet("/view/HTML/UserLogin")
public class LoginUser extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		



		try {
			ResultSet rs = UserDAO.loginUser(phone);
    	    String encryptPassword = rs.getString("User_password");
    	    System.out.println("Login success");
    	    System.out.println(encryptPassword);
    	    
    	    
    	    String userPassword = AESEncryption.decrypt(encryptPassword);
    	    System.out.println(userPassword);

			if (userPassword.equals(password)) {
				// Successful login, set the user in the session
				out.println("Login success");
				System.out.println("Login success");
			} else {

				request.setAttribute("error", "Invalid phone number or password");
				RequestDispatcher rd = request.getRequestDispatcher("Login.html");
				rd.forward(request, response);
			}
		} catch (SQLException e) {

		}

	}
}
