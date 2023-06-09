package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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

@WebServlet("/addProduct")
@MultipartConfig
public class AddProduct extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("prodId");
        String name = req.getParameter("prodName");
        String description = req.getParameter("prodDesc");
        String price = req.getParameter("prodPrice");
        String rating = req.getParameter("prodRating");
        Part image1 = req.getPart("prodImg1");
        Part image2 = req.getPart("prodImg2");
        String category = req.getParameter("prodCat");
        String quantity = req.getParameter("prodQuan");
        String prodImagePath1 = "prodImage/" + id + "1.png";
        String prodImagePath2 = "prodImage/" + id + "2.png";
        PrintWriter out = resp.getWriter();
        Products prodInfo = new Products(id, name, description, price, category, rating, prodImagePath1, prodImagePath2,
                quantity);

        try {
            String message = ProductDAO.addProduct(prodInfo);
            System.out.println(message);
            if (message.equals("Successfully Added")) {
                String path = getServletContext().getInitParameter("image_path");
                String imagePath1 = path + prodImagePath1;
                String imagePath2 = path + prodImagePath2;
                image1.write(imagePath1);
                image2.write(imagePath2);
                req.setAttribute("Success", "Product Added Successfully");
                RequestDispatcher rd = req.getRequestDispatcher("/viewProducts");
                rd.forward(req, resp);
            } else if (message.equals("Duplicate entry: " + id)) {
                req.setAttribute("Error", "Id should be unique");
                RequestDispatcher rd = req.getRequestDispatcher("/addProducts");
                rd.forward(req, resp);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
