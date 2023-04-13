package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;
import model.Products;

@WebServlet("/editProduct")
public class EditProductDetails extends HttpServlet{

	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		Products prod = new ProductDAO().getProductDetailsById(id);
		req.setAttribute("product", prod);
		RequestDispatcher rd = req.getRequestDispatcher("view/JSP/EditProduct.jsp");
		rd.forward(req, resp);
	}
	
	

}
