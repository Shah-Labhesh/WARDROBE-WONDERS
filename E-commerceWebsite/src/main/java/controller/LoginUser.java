package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import model.UserDAO;

import java.sql.*;

@WebServlet("/")
public class LoginUser extends HttpServlet {
  
  public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
    
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    
    
    try {
    ResultSet rs = UserDAO.loginUser(phone, password);  	
      
    if (rs.next()) {
        // Successful login, set the user in the session
      PrintWriter out = response.getWriter();
      out.println("Login success");
    } else {
        
      request.setAttribute("error", "Invalid phone number or password");
      RequestDispatcher rd = request.getRequestDispatcher("Login.html");
      rd.forward(request, response);
    }
    }catch(ClassNotFoundException | SQLException e) {
    	
    }
    
  }
}

