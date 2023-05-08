package model;

public class PlaceOrder {

	private int orderId;
	private String pId;
	private String date;
	private String user;
	private long price;
	private int quan;

	public PlaceOrder(int orderId, String pId, String date, String user, long price, int quan) {
		this.orderId = orderId;
		this.pId = pId;
		this.date = date;
		this.user = user;
		this.price = price;
		this.quan = quan;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public int getQuan() {
		return quan;
	}

	public void setQuan(int quan) {
		this.quan = quan;
	}

}
