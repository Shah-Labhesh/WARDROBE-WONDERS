package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AESEncryption;
import model.UserDAO;

@WebServlet(urlPatterns = {"/view/HTML/UserRegistration"})
public class UserRegistration extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String name = req.getParameter("fullname");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String cPassword = req.getParameter("confirmPassword");
		PrintWriter out = res.getWriter();

		if (password.equals(cPassword)) {
			String encryptPassword = AESEncryption.encrypt(password);

			User urInfo = new User(name, phone, email, encryptPassword);

			try {
				String message = UserDAO.registerUser(urInfo);
				res.setContentType("text/html");
				out.println("<h1>" + message + "</h1>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			res.setContentType("text/html");
			out.println("<h1>" + "Password didn't matched!" + "</h1>");
		}

	}
}
