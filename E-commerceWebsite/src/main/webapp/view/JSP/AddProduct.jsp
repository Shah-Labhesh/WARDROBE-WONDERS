<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Products</title>
<link rel="stylesheet" href="../CSS/AddProduct.css">
</head>
<body>
<jsp:include page="/view/JSP/Header.jsp" />
	<div class="container">
		<div class="form-wrapper">
			<h1>Admin Panel - Add Product</h1>
			<form action="../../addProduct" method="post"
				enctype="multipart/form-data">
				<p>${error}</p>
				
				<div class="form-group">
					<label for="productId">Product ID:</label> <input type="text"
						id="productId" name="prodId" placeholder="Enter product ID"
						required>
				</div>
				<div class="form-group">
					<label for="productName">Product Name:</label> <input type="text"
						id="productName" name="prodName" placeholder="Enter product name"
						required>
				</div>
				<div class="form-group">
					<label for="productDescription">Product Description:</label>
					<textarea id="productDescription" rows="3" name="prodDesc"
						placeholder="Enter product description" required></textarea>
				</div>
				<div class="form-group">
					<label for="productPrice">Product Price:</label> <input
						type="text" id="productPrice" name="prodPrice"
						placeholder="Enter product price" required>
				</div>

				<div class="form-group">
					<label for="productImage">Product Image:</label> <input type="file"
						id="productImage" name="prodImg1" accept="image/*" required>
					<input type="file" id="productImage" name="prodImg2"
						accept="image/*" required>
				</div>


				<div class="form-group">
					<label for="productCategory">Category:</label> <select
						id="productCategory" name="prodCat" required>
						<option value="Mens">Mens</option>
						<option value="Womens">Womens</option>
						<option value="Kids">Kids</option>

					</select>
				</div>

				<div class="form-group">
					<label for="productQuantity">Product Quantity:</label> <input
						type="number" id="productQuantity" name="prodQuan"
						placeholder="Enter product quantity" required>
				</div>
				<button type="submit">Add Product</button>
			</form>
		</div>
		<div class="image-wrapper">
			<img src="../images/background.jpg" alt="Product Image">
		</div>
	</div>
		<jsp:include page="/view/JSP/Footer.jsp" />
</body>
</html>