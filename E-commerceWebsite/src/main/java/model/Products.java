package model;

public class Products {
	private String productId;
	private String productName;
	private String productDescription;
	private String productPrice;
	private String productCat;
	private String productRating;
	private String productImagePath1;
	private String productImagePath2;
	private String productQuantity;

	public Products(String productId, String productName, String productDescription, String productPrice, String productCat, String productRating,
			String productImagePath1, String productImagePath2, String productQuantity) {

		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.productCat = productCat;
		this.productRating = productRating;
		this.productImagePath1 = productImagePath1;
		this.productImagePath2 = productImagePath2;
		this.productQuantity = productQuantity;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductCat() {
		return productCat;
	}

	public void setProductCat(String productCat) {
		this.productCat = productCat;
	}
	

	public String getProductRating() {
		return productRating;
	}

	public void setProductRating(String productRating) {
		this.productRating = productRating;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImagePath1() {
		return productImagePath1;
	}

	public void setProductImagePath1(String productImagePath1) {
		this.productImagePath1 = productImagePath1;
	}
	public String getProductImagePath2() {
		return productImagePath2;
	}
	
	public void setProductImagePath2(String productImagePath2) {
		this.productImagePath2 = productImagePath2;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

}
