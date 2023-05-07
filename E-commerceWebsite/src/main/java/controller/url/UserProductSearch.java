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
@WebServlet("/userSearchProduct")
public class UserProductSearch extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String value = req.getParameter("search");
		ArrayList<Products> productList = ProductDAO.searchProduct(value);
		RequestDispatcher rd = req.getRequestDispatcher("view/JSP/Product.jsp");
		req.setAttribute("productList", productList);
		rd.forward(req, resp);
	}
}
