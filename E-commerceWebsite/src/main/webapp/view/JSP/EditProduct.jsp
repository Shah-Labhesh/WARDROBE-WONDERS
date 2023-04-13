<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product details</title>
<link rel="stylesheet" href="../CSS/AddProduct.css">
</head>
<body>
	<div class="container">
		<div class="form-wrapper">
			<h1>Admin Panel - Add Product</h1>
			<form action="updateProduct" method="post"
				enctype="multipart/form-data">
				<p>${error}</p>

				<div class="form-group">
					<label for="productId">Product ID:</label> <input type="text"
						id="productId" name="prodId" placeholder="Enter product ID"
						value="${product.productId}" readonly="readonly" required>
				</div>
				<div class="form-group">
					<label for="productName">Product Name:</label> <input type="text"
						id="productName" name="prodName" placeholder="Enter product name"
						value="${product.productName}" required>
				</div>
				<div class="form-group">
					<label for="productDescription">Product Description:</label>
					<textarea id="productDescription" rows="3" name="prodDesc"
						placeholder="Enter product description" required></textarea>
				</div>
				<div class="form-group">
					<label for="productPrice">Product Price:</label> <input type="text"
						id="productPrice" name="prodPrice"
						placeholder="Enter product price" value="${product.productPrice}"
						required>
				</div>

				<div class="form-group">
					<label for="productImage">Product Image:</label> <input type="file"
						id="productImage1" onchange="onPickImage1()" name="prodImg1"
						accept="image/*"> <input type="file" id="productImage2"
						onchange="onPickImage2()" name="prodImg2" accept="image/*">
				</div>


				<div class="form-group">
					<label for="productCategory">Category:</label> <select
						id="productCategory" name="prodCat" required>
						<option value="Mens"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Mens'}">selected</c:if>>Mens</option>
						<option value="Womens"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Womens'}">selected</c:if>>Womens</option>
						<option value="Kids"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Kids'}">selected</c:if>>Kids</option>

					</select>
				</div>

				<div class="form-group">
					<label for="productQuantity">Product Quantity:</label> <input
						type="number" id="productQuantity" name="prodQuan"
						placeholder="Enter product quantity"
						value="${product.productQuantity}" required>
				</div>
				<button type="submit">Update Product</button>
			</form>
		</div>
		<div class="image-wrapper">
			<img src="../images/${product.productImagePath1}" id="image1"
				alt="Product Image"> <img
				src="../images/${product.productImagePath2}" id="image2"
				alt="Product Image">
		</div>
	</div>
</body>
<script>
	document.getElementById("productDescription").value = "${product.productDescription}";
	function onPickImage1() {
		var image = document.getElementById("image1");
		var imageChooser = document.getElementById("productImage1");
		image.src = URL.createObjectURL(imageChooser.files[0]);
	}
	function onPickImage2() {
		var image = document.getElementById("image2");
		var imageChooser = document.getElementById("productImage2");
		image.src = URL.createObjectURL(imageChooser.files[0]);
	}
</script>
</html>