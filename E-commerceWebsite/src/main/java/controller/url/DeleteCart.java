package controller.url;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import model.CartDAO;

@WebServlet("/deleteCartItem")
public class DeleteCart extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		String idstr = req.getParameter("id");
		int id = Integer.parseInt(idstr);
		String message = CartDAO.deleteCartItem(id);
		if(message==null) {
			RequestDispatcher rd = req.getRequestDispatcher("/cart");
			req.setAttribute("error", "cannot be delete");
			rd.forward(req, res);
		}
		else if (message.equals("Successfully Deleted") && !res.isCommitted()) {
			
				RequestDispatcher rd = req.getRequestDispatcher("/cart");
				req.setAttribute("success", "Product deleted from cart");
				rd.forward(req, res);
		}
	}
}
