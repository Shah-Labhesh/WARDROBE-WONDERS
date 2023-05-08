package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AESEncryption;
import model.UserDAO;

@WebServlet("/updatePass")
public class UpdatePass extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String old = req.getParameter("oldPass");
		String newPass = req.getParameter("newPass");
		HttpSession session = req.getSession();
		String currentPass = (String) session.getAttribute("loggedInPass");
		String currentUser = (String) session.getAttribute("loggedInId");
		
		
		if (currentPass.equals(old)) {
			String encrypt=AESEncryption.encrypt(newPass);
			try {
				String message = UserDAO.changePassword(currentUser,encrypt);
				if(message.equals("Successfully Updated")) {
					session.setAttribute("loggedInPass", newPass);
					System.out.println("hello");
					RequestDispatcher rd = req.getRequestDispatcher("/profile");
					rd.forward(req, resp);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
