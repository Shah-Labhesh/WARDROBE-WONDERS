package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserDAO;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet{

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String name = req.getParameter("fullname");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String cPassword = req.getParameter("confirmPassword");
		PrintWriter out = res.getWriter();
		
		
		try {
			String message = UserDAO.registerUser(name, phone, email, password, cPassword);
			res.setContentType("text/html");  
	        out.println("<h1>"+message+"</h1>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			
		
	}
}
