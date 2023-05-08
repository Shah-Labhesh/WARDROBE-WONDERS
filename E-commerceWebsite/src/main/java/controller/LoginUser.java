package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AESEncryption;
import model.AdminDAO;
import model.User;
import model.UserDAO;

@WebServlet("/UserLogin")
public class LoginUser extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		try {
			ResultSet rs = AdminDAO.loginAdmin(phone);
			User user = UserDAO.loginUser(phone);

			if (rs != null && rs.next()) {
				if (password.equals(rs.getString("Admin_password"))) {
					session.setAttribute("loggedInId", phone);
					session.setAttribute("loggedInPass", password);
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Admin logged In Successfully');");
					out.println("location='UserLogin';");
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/Admin");
					rd.include(request, response);
				} else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User or password incorrect');");
					out.println("location='SignIn';");
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/SignIn");
					rd.include(request, response);
				}
				return;
			} else if (user != null) {
					
				
				String encryptPassword = user.getEncryptPassword();
				String userPassword = AESEncryption.decrypt(encryptPassword);
				if (userPassword.equals(password)) {
					// Successful login, set the user in the session
					session.setAttribute("loggedInId", phone);
					session.setAttribute("loggedInName", user.getUserName());
					session.setAttribute("loggedInImg", user.getUserImagePath());
					session.setAttribute("loggedInEmail", user.getUserEmail());
					session.setAttribute("loggedInAddress", user.getUserAddress());
					session.setAttribute("loggedInPass", userPassword);
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User logged In successfully');");
					out.println("location='UserLogin';");
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/home");
					rd.include(request, response);
				} else {
					request.setAttribute("error", "User or password incorrect");
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User or password incorrect');");
					out.println("location='SignIn';");
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/SignIn");
					rd.include(request, response);
				}

			}else {
				request.setAttribute("error", "User or password incorrect");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('User or password incorrect');");
				out.println("location='SignIn';");
				out.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/SignIn");
				rd.include(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();

		}

	}
}
