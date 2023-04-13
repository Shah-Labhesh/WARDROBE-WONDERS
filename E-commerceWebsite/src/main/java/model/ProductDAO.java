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
			String addQuery = "INSERT INTO products (Prod_Id,Prod_name,Prod_description,Prod_price,Prod_imagePath1,Prod_imagePath2,Prod_category,Prod_quantity) values (?,?,?,?,?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, pdInfo.getProductId());
			pt.setNString(2, pdInfo.getProductName());
			pt.setNString(3, pdInfo.getProductDescription());
			pt.setNString(4, pdInfo.getProductPrice());
			pt.setNString(5, pdInfo.getProductImagePath1());
			pt.setNString(6, pdInfo.getProductImagePath2());
			pt.setNString(7, pdInfo.getProductCat());
			pt.setNString(8, pdInfo.getProductQuantity());
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

			String getQuery = "SELECT * from products";
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

				Products prod = new Products(id, name, description, price, category, imagePath1, imagePath2, quantity);
				productList.add(prod);
			}
			return productList;

		} catch (ClassNotFoundException | SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

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

			prod = new Products(id2, name, description, price, category, imagePath1, imagePath2, quantity);
			}

		} catch (ClassNotFoundException | SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
		return prod;

	}
	public static String updateProduct(Products pd) {
		try {

			String updateQuery = "UPDATE products SET Prod_name=?, Prod_description=?, Prod_price=?, Prod_imagePath1=?, Prod_imagePath2=?, Prod_category=?, Prod_quantity=? WHERE id=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(updateQuery);
			pt.setNString(1, pd.getProductName());
			pt.setNString(2, pd.getProductDescription());
			pt.setNString(3, pd.getProductPrice());
			pt.setNString(4, pd.getProductImagePath1());
			pt.setNString(5, pd.getProductImagePath2());
			pt.setNString(6, pd.getProductCat());
			pt.setNString(7, pd.getProductQuantity());
			pt.setNString(8, pd.getProductId());
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully Updated";
			}

			con.close();
		} catch (ClassNotFoundException | SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
			return e.getMessage();

		}
		return null;
	}

}
