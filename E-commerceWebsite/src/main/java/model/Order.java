package model;

public class Order {

	private int id;
	private String pId;
	private String user;
	private int quan;
	
	public Order(int id, String pId, String user, int quan) {
		this.id = id;
		this.pId = pId;
		this.user = user;
		this.quan = quan;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public int getQuan() {
		return quan;
	}

	public void setQuan(int quan) {
		this.quan = quan;
	}

}
