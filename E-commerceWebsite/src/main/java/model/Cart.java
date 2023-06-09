package model;

public class Cart {
	private int id;
	private String img;
	private String name;
	private String price;
	private int quan;

	public Cart(int id,String img, String name, String price, int quan) {
		this.id=id;
		this.img = img;
		this.name = name;
		this.price = price;
		this.quan = quan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getQuan() {
		return quan;
	}

	public void setQuan(int quan) {
		this.quan = quan;
	}

}
