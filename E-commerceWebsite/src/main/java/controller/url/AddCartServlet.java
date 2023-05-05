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

import model.CartDAO;

@WebServlet("/addCart")
public class AddCartServlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String prodId = req.getParameter("id");
		String quanStr = req.getParameter("quan");
		int quan = Integer.parseInt(quanStr);

		String user = (String) session.getAttribute("loggedInId");
		try {
			String message = CartDAO.addToCart(prodId, quan, user);
			if (message.equals("Successfully Added")) {
				RequestDispatcher rd = req.getRequestDispatcher("/cart");
				rd.forward(req, resp);
			} else {
				RequestDispatcher rd = req.getRequestDispatcher("/products");
				rd.forward(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
