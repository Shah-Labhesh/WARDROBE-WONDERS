package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.ProductDAO;
import model.Products;

@WebServlet("/up")
@MultipartConfig
public class UpdateProductDetails extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String description = req.getParameter("desc");
		String price = req.getParameter("price");
		Part image1 = req.getPart("img1");
		Part image2 = req.getPart("img2");
		String category = req.getParameter("cat");
		String quantity = req.getParameter("quan");
		String rating = req.getParameter("prodRating");
		String prodImagePath1 = "prodImage/" + id + "1.png";
		String prodImagePath2 = "prodImage/" + id + "2.png";

		Products prodInfo = new Products(id, name, description, price, category, rating, prodImagePath1, prodImagePath2,
				quantity);

		String message = ProductDAO.updateProduct(prodInfo);
		if (message.equals("Successfully Updated")) {
			String path = getServletContext().getInitParameter("image_path");

			

			if (image1 != null && image1.getInputStream().available() > 0) {
				String imagePath1 = path + prodImagePath1;
				image1.write(imagePath1);
			}
			if (image2 != null && image2.getInputStream().available() > 0) {
				String imagePath2 = path + prodImagePath2;

				image2.write(imagePath2);
			}
			if (resp.isCommitted()) {
				RequestDispatcher rd = req.getRequestDispatcher("/viewProducts");
				rd.forward(req, resp);
			}
			
		}

		RequestDispatcher rd = req.getRequestDispatcher("/viewProducts");
		rd.forward(req, resp);

	}
}
