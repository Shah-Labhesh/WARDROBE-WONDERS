package controller.url;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import model.UserDAO;

@WebServlet("/updateUserDetails")
public class EditDetails extends HttpServlet {

	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String phone = (String) session.getAttribute("loggedInId");

		User user;
		try {
			user = UserDAO.getUserDetailsByPhone(phone);
			req.setAttribute("ur", user);
			RequestDispatcher rd = req.getRequestDispatcher("view/JSP/ProfileUpdate.jsp");
			rd.forward(req, res);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}
}
