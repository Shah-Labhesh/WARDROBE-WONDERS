package controller.url;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.CartDAO;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{
	
	
	
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String user = (String) session.getAttribute("loggedInId");
		try {
			ArrayList<Cart> message=CartDAO.getCartDetailsByUser(user);
			if(message!=null && !resp.isCommitted()) {
			RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Cart.jsp");
			req.setAttribute("cartList", message);
			rd.forward(req, resp);
			}
			RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Cart.jsp");
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
