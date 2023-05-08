package model;

public class ViewOrder {

	private String img;
	private String name;
	private int quan;
	private long price;

	private String user;

	public ViewOrder(String img, String name, int quan, long price, String user) {
		this.img = img;
		this.name = name;
		this.quan = quan;
		this.price = price;

		this.user = user;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuan() {
		return quan;
	}

	public void setQuan(int quan) {
		this.quan = quan;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

}
