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

import model.CartDAO;
import model.Order;
import model.OrderDAO;
import model.PlaceOrder;

@WebServlet("/cartCheckOut")
public class CartCheckOut extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<PlaceOrder> placeOrder = new ArrayList<PlaceOrder>();
		HttpSession session = req.getSession();
		String userPhone = (String) session.getAttribute("loggedInId");
		long totalPrice=  (long) session.getAttribute("totalPrice");
		
		
		try {
			ArrayList<Order> or = CartDAO.getCartDetailsForOrder(userPhone);
			for (Order order : or) {
				int id = order.getId();
		        String productId = order.getpId();
		        int quantity = order.getQuan();
		        String user = order.getUser();
		        int orderId=0;
		        String date=null;

		        PlaceOrder userOrder = new PlaceOrder( orderId, productId, date, user, totalPrice, quantity);
		        String ordered = OrderDAO.order(userOrder);
		        placeOrder.add(userOrder);
		        if (!resp.isCommitted() && ordered.equals("Successfully ordered")) {
		        	String message = CartDAO.deleteCartItem(id);
		        	if (message.equals("Successfully Deleted")) {
		        		RequestDispatcher rd = req.getRequestDispatcher("/cart");
		        		rd.forward(req, resp);
		        	}
		        	System.out.println(totalPrice);
		        }
		    }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
