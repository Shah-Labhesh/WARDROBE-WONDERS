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

import model.OrderDAO;
import model.ViewOrder;

@WebServlet("/viewOrder")
public class ViewOrderServlet extends HttpServlet{
	
	
	
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<ViewOrder> orderList;
		try {
			orderList = OrderDAO.fetchOrderDetails();
			RequestDispatcher rd = req.getRequestDispatcher("view/Admin/ViewOrder.jsp");
			req.setAttribute("List",orderList);
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
