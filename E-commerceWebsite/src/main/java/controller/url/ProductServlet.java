package controller.url;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;
import model.Products;

@WebServlet("/products")
public class ProductServlet extends HttpServlet{
	
	
	
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Products> productList = ProductDAO.fetchProductDetails();
		RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Product.jsp");
		req.setAttribute("productList", productList);
		rd.forward(req, resp);
	}
}
