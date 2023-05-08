package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartDAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}

	public static String addToCart(String prodId, int quantity, String user) throws SQLException {

		try {
			String addQuery = "INSERT INTO carts (Prod_Id,Quantity,User_phone) values (?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, prodId);
			pt.setInt(2, quantity);;
			pt.setNString(3, user);
			System.out.println(prodId + " " + quantity + " " + user);
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

	public static ArrayList<Cart> getCartDetailsByUser(String user) throws SQLException {
		ArrayList<Cart> cart = new ArrayList<Cart>();
		try {
			String getQuery = "SELECT p.*, c.Quantity, c.Cart_Id FROM products p JOIN carts c ON p.Prod_Id = c.Prod_Id JOIN users u ON u.User_phone = c.User_phone WHERE u.User_phone = ?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);
			pt.setNString(1, user);
			ResultSet table = pt.executeQuery();
			while (table.next()) {
				int id = table.getInt("Cart_Id");
				String img = table.getNString("Prod_imagePath1");
				String name = table.getNString("Prod_name");
				String price = table.getNString("Prod_price");
				int quantity = table.getInt("Quantity");

				Cart ct = new Cart(id,img,name,price,quantity);
				cart.add(ct);
			}
			con.close();
			return cart;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static ArrayList<Order> getCartDetailsForOrder(String user) throws SQLException {
		ArrayList<Order> order = new ArrayList<Order>();
		try {
			String getQuery = "SELECT * from carts WHERE User_phone = ?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);
			pt.setNString(1, user);
			ResultSet table = pt.executeQuery();
			while (table.next()) {
				int id = table.getInt("Cart_Id");
				String pId = table.getNString("Prod_Id");
				String userPhone = table.getNString("User_phone");
				int quantity = table.getInt("Quantity");

				Order od = new Order(id,pId,userPhone,quantity);
				order.add(od);
			}
			con.close();
			return order;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static String deleteCartItem(int id) {
		try {

			String deleteQuery = "DELETE FROM carts WHERE Cart_Id=?";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(deleteQuery);
			pt.setInt(1, id);

			int rows = pt.executeUpdate();

			con.close();
			if (rows >= 1) {
				return "Successfully Deleted";
			}
			System.out.println(rows);

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
			return e.getMessage();

		}
		return null;

	}


}
