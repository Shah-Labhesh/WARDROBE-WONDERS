package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AESEncryption;
import model.AdminDAO;
import model.UserDAO;

@WebServlet("/UserLogin")
public class LoginUser extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");

		try {
			ResultSet rs = AdminDAO.loginAdmin(phone);
			ResultSet rsUser = UserDAO.loginUser(phone);
			if (rs != null && rs.next()) {
				if (password.equals(rs.getString("Admin_password"))) {
					RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Admin/Admin.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("error", "Invalid phone number or password");
					RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/SignIn");
					rd.forward(request, response);
				}
			} else if (rsUser != null && rsUser.next()) {
				String encryptPassword = rsUser.getString("User_password");
				String userPassword = AESEncryption.decrypt(encryptPassword);
				if (userPassword.equals(password)) {
					// Successful login, set the user in the session
					
					response.sendRedirect("view/JSP/Index.jsp");
				} else {

					request.setAttribute("error", "Invalid phone number or password");
					RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/SignIn");
					rd.forward(request, response);
				}

			} else {

				System.out.println("empty");

			}
		} catch (SQLException e) {

			e.printStackTrace();

		}

	}
}
