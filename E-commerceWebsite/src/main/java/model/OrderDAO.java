package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OrderDAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/clothe_shop";
		String userName = "root";
		String password = "";
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}

	public static String order(PlaceOrder or) throws SQLException {

		try {
			String addQuery = "INSERT INTO orders (Prod_Id,User_phone,Price,Quantity) values (?,?,?,?)";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(addQuery);
			pt.setNString(1, or.getpId());
			pt.setNString(2, or.getUser());
			pt.setLong(3, or.getPrice());
			pt.setInt(4, or.getQuan());
			int rows = pt.executeUpdate();
			if (rows >= 1) {
				return "Successfully ordered";
			}
			con.close();
			return null;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public static ArrayList<ViewOrder> fetchOrderDetails() throws SQLException {
		ArrayList<ViewOrder> order = new ArrayList<ViewOrder>();
		try {
			String getQuery = "SELECT products.Prod_imagePath1, products.Prod_name, orders.Quantity, orders.Price, orders.User_phone FROM products INNER JOIN orders ON products.Prod_Id = orders.Prod_Id;";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);
			ResultSet table = pt.executeQuery();
			while (table.next()) {
				String img=table.getNString("Prod_imagePath1");
				String name = table.getNString("Prod_name");
				long price = table.getLong("Price");
				String userPhone = table.getNString("User_phone");
				int quantity = table.getInt("Quantity");
				

				ViewOrder od = new ViewOrder(img, name, quantity, price, userPhone);
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
	
	public static ArrayList<ViewOrder> fetchOrderDetailsByUser(String phone) throws SQLException {
		ArrayList<ViewOrder> order = new ArrayList<ViewOrder>();
		try {
			String getQuery = "SELECT products.Prod_imagePath1, products.Prod_name, orders.Quantity, orders.Price, orders.User_phone FROM products INNER JOIN orders ON products.Prod_Id = orders.Prod_Id WHERE orders.User_phone = ?;";
			Connection con = getConnection();
			PreparedStatement pt = con.prepareStatement(getQuery);
			ResultSet table = pt.executeQuery();
			while (table.next()) {
				String img=table.getNString("Prod_imagePath1");
				String name = table.getNString("Prod_name");
				long price = table.getLong("Price");
				String userPhone = table.getNString("User_phone");
				int quantity = table.getInt("Quantity");
				

				ViewOrder od = new ViewOrder(img, name, quantity, price, userPhone);
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
}
