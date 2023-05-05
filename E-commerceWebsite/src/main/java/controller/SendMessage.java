package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MessageDAO;

@WebServlet("/message")
public class SendMessage extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String message = req.getParameter("message");

		try {
			String notify = MessageDAO.sendMessage(name, email, message);
			if (notify.equals("Successfully Added")) {
				RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Contact.jsp");
				req.setAttribute("success", "Successfully sended");
				rd.forward(req, resp);
			} else {
				RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Contact.jsp");
				req.setAttribute("error", "Message can't be send");
				rd.forward(req, resp);
			}
		} catch (Exception e) {

		}
	}
}
