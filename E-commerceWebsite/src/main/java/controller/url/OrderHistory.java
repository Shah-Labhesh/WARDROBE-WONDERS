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

import model.OrderDAO;
import model.ViewOrder;

@WebServlet("/history")
public class OrderHistory extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String phone = (String) session.getAttribute("loggedInId");
		try {
			ArrayList<ViewOrder> list = OrderDAO.fetchOrderDetailsByUser(phone);
			req.setAttribute("orderList", list);
			RequestDispatcher rd = req.getRequestDispatcher("view/JSP/History.jsp");
			rd.forward(req, res);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
