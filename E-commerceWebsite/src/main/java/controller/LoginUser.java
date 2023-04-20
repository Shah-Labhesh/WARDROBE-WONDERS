package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.AESEncryption;
import model.UserDAO;

import java.sql.*;

@WebServlet("/view/JSP/UserLogin")
public class LoginUser extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();

		try {
			ResultSet rs = UserDAO.loginUser(phone);
			System.out.println("Login success");
			if (rs == null || !rs.next()) {
				System.out.println("empty");
			} else {

				String encryptPassword = rs.getString("User_password");

				String userPassword = AESEncryption.decrypt(encryptPassword);

				if (userPassword.equals(password)) {
					// Successful login, set the user in the session
					out.println("Login success");

					RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
					rd.forward(request, response);
				} else {

					request.setAttribute("error", "Invalid phone number or password");
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
					rd.forward(request, response);
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();

		}

	}
}
