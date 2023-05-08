package controller.url;

import java.io.IOException;
import java.io.PrintWriter;
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
		PrintWriter out = resp.getWriter();


		String user = (String) session.getAttribute("loggedInId");
		try {
			String message = CartDAO.addToCart(prodId, quan, user);
			if (message.equals("Successfully Added")) {
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Added to cart Successfully');");
				out.println("location='/addCart';");
				out.println("</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/cart");
				rd.include(req, resp);
			} else {
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Add to cart failed');");
				out.println("location='products';");
				out.println("</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/products");
				rd.include(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
