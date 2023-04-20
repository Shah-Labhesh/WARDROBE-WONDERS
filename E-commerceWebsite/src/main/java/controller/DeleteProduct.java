
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ProductDAO;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String message = ProductDAO.deleteProduct(id);
		if(message.equals("Successfully Deleted")) {
			resp.sendRedirect(req.getContextPath()+"/viewProducts");
		}
	}
}