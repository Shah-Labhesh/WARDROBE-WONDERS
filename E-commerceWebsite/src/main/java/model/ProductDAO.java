package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}

	public static String addProduct(Products pdInfo) throws SQLException {

		try {
			String addQuery = "INSERT INTO products (Prod_Id,Prod_name,Prod_description,Prod_price,Prod_rating,Prod_imagePath1,Prod_imagePath2,Prod_category,Prod_quantity) values (?,?,?,?,?,?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, pdInfo.getProductId());
			pt.setNString(2, pdInfo.getProductName());
			pt.setNString(3, pdInfo.getProductDescription());
			pt.setNString(4, pdInfo.getProductPrice());
			pt.setNString(5, pdInfo.getProductRating());
			pt.setNString(6, pdInfo.getProductImagePath1());
			pt.setNString(7, pdInfo.getProductImagePath2());
			pt.setNString(8, pdInfo.getProductCat());
			pt.setNString(9, pdInfo.getProductQuantity());
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully Added";
			}
			con.close();
			return null;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public static ArrayList<Products> fetchProductDetails() {
		ArrayList<Products> productList = new ArrayList<>();
		try {

			String getQuery = "SELECT * from products ORDER BY Prod_Id ASC";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);

			ResultSet table = pt.executeQuery();
			while (table.next()) {
				String id = table.getString(1);
				String name = table.getString(2);
				String description = table.getString(3);
				String price = table.getString(4);
				String imagePath1 = table.getString(5);
				String imagePath2 = table.getString(6);
				String category = table.getString(7);
				String quantity = table.getString(8);
				String rating= table.getString(9);

				Products prod = new Products(id, name, description, price, category,rating, imagePath1, imagePath2, quantity);
				productList.add(prod);
			}
			con.close();
			return productList;

		} catch (ClassNotFoundException | SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		} finally {

		}
		return null;
	}

	public Products getProductDetailsById(String id) {
		Products prod = null;
		try {

			String getQuery = "SELECT * from products where Prod_Id=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);
			pt.setString(1, id);
			ResultSet table = pt.executeQuery();
			while (table.next()) {
				String id2 = table.getString(1);
				String name = table.getString(2);
				String description = table.getString(3);
				String price = table.getString(4);
				String imagePath1 = table.getString(5);
				String imagePath2 = table.getString(6);
				String category = table.getString(7);
				String quantity = table.getString(8);
				String rating= table.getString(9);
				prod = new Products(id2, name, description, price, category,rating, imagePath1, imagePath2, quantity);
			}
			con.close();

		} catch (ClassNotFoundException | SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
		return prod;

	}

	public static String updateProduct(Products pd) {
		try {

			String updateQuery = "UPDATE products SET Prod_name=?, Prod_description=?, Prod_price=?, Prod_rating=?, Prod_imagePath1=?, Prod_imagePath2=?, Prod_category=?, Prod_quantity=? WHERE Prod_Id=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(updateQuery);
			pt.setString(1, pd.getProductName());
			pt.setString(2, pd.getProductDescription());
			pt.setString(3, pd.getProductPrice());
			pt.setString(4, pd.getProductRating());
			pt.setString(5, pd.getProductImagePath1());
			pt.setString(6, pd.getProductImagePath2());
			pt.setString(7, pd.getProductCat());
			pt.setString(8, pd.getProductQuantity());
			pt.setString(9, pd.getProductId());

			int rows = pt.executeUpdate();

			con.close();
			if (rows >= 1) {
				return "Successfully Updated";
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
			return e.getMessage();
		}
		return null;

	}

	public static String deleteProduct(String id) {
		try {

			String deleteQuery = "DELETE FROM products WHERE Prod_Id=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(deleteQuery);
			pt.setString(1, id);

			int rows = pt.executeUpdate();

			con.close();
			if (rows >= 1) {
				return "Successfully Deleted";
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
			return e.getMessage();

		}
		return null;

	}

	public static ArrayList<Products> searchProduct(String value) {
		ArrayList<Products> prod = new ArrayList();
		try {

			String searchQuery = "SELECT * FROM products where Prod_name LIKE ? OR Prod_category LIKE ? OR Prod_price LIKE ? OR Prod_description LIKE ?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(searchQuery);
			pt.setString(1, "%" + value + "%");
			pt.setString(2,  value );
			pt.setString(3, "%" + value + "%");
			pt.setString(4, "%" + value + "%");

			ResultSet table = pt.executeQuery();
			while (table.next()) {
				String id = table.getString(1);
				String name = table.getString(2);
				String description = table.getString(3);
				String price = table.getString(4);
				String imagePath1 = table.getString(5);
				String imagePath2 = table.getString(6);
				String category = table.getString(7);
				String quantity = table.getString(8);
				String rating= table.getString(9);
				
				Products pd = new Products(id, name, description, price, category, rating, imagePath1, imagePath2, quantity);
				prod.add(pd);
			}
			con.close();

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
		return prod;
	}

}
