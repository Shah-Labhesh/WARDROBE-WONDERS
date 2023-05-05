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
import javax.servlet.http.HttpSession;

import model.AESEncryption;
import model.AdminDAO;
import model.UserDAO;

@WebServlet("/UserLogin")
public class LoginUser extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isValid = false;
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
	      HttpSession session = request.getSession();


		try {
			ResultSet rs = AdminDAO.loginAdmin(phone);
			ResultSet rsUser = UserDAO.loginUser(phone);
			if (rs != null && rs.next()) {
				if (password.equals(rs.getString("Admin_password"))) {
					isValid=true;
					session.setAttribute("loggedInId", phone);
					RequestDispatcher rd = request.getRequestDispatcher("view/Admin/Admin.jsp");
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
					isValid=true;
					session.setAttribute("loggedInId", phone);
					// Successful login, set the user in the session
					RequestDispatcher rd = request.getRequestDispatcher("view/JSP/Index.jsp");
					rd.forward(request, response);
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
