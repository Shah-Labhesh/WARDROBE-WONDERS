package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.AESEncryption;
import model.User;
import model.UserDAO;

@WebServlet(urlPatterns = {"/UserRegistration" })
@MultipartConfig
public class UserRegistration extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
				
		String name = req.getParameter("fullname");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String password = req.getParameter("password");
		Part img = req.getPart("userImage");
		String userImagePath = "userImage/" + phone + ".png";
		String encryptPassword = AESEncryption.encrypt(password);
		User urInfo = new User(name, phone, email, address, userImagePath,encryptPassword);

		
		



		try {
			String message = UserDAO.registerUser(urInfo);
			String path = getServletContext().getInitParameter("image_path");
			String imagePath = path + userImagePath;
			img.write(imagePath);
			if (message.isEmpty()) {
				req.setAttribute("error", "Cannot register!");
				RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Register.jsp");
				rd.forward(req, res);
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Index.jsp");
				rd.forward(req, res);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
}
