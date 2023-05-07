package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.AESEncryption;
import model.User;
import model.UserDAO;
@MultipartConfig
@WebServlet("/saveUserDetails")
public class UpdateUser extends HttpServlet{
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String name = req.getParameter("name");
		String phone = req.getParameter("contact");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String pass = req.getParameter("confirm-password");
		String currentPass=(String) session.getAttribute("loggedInPass");
		Part img = req.getPart("userImage");
		String userImagePath = "userImage/" + phone + ".png";
		
		
		if(currentPass.equals(pass)) {
			String encryptPassword = AESEncryption.encrypt(pass);
			User urInfo = new User(name, phone, email, address, userImagePath,encryptPassword);
			
			String message;
			try {
				message = UserDAO.updateUser(urInfo);
				if (message.equals("Successfully Updated")) {
					String path = getServletContext().getInitParameter("image_path");
					
					
					
					if (img != null && img.getInputStream().available() > 0) {
						String imagePath = path + userImagePath;
						img.write(imagePath);
					}
					
					RequestDispatcher rd = req.getRequestDispatcher( "/profile");
					rd.forward(req, res);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			RequestDispatcher rd = req.getRequestDispatcher(req.getContextPath() + "/updateUserDetails");
			rd.forward(req, res);
		}
		
		


		
		
		
		
		
	}
}
