<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product details</title>
<link rel="stylesheet" href="view/CSS/AddProduct.css">
</head>
<body>
<jsp:include page="/view/JSP/Header.jsp" />
	<div class="container">
		<div class="form-wrapper">
			<h1>Admin Panel - Edit product</h1>
			<form action="up" method="post"
				enctype="multipart/form-data">
				<p>${error}</p>

				<div class="form-group">
					<label for="productId">Product ID:</label> <input type="text"
						id="productId" name="id" placeholder="Enter product ID"
						value="${product.productId}" readonly="readonly" required>
				</div>
				<div class="form-group">
					<label for="productName">Product Name:</label> <input type="text"
						id="productName" name="name" placeholder="Enter product name"
						value="${product.productName}" required>
				</div>
				<div class="form-group">
					<label for="productDescription">Product Description:</label>
					<textarea id="productDescription" rows="3" name="desc"
						placeholder="Enter product description" required></textarea>
				</div>
				<div class="form-group">
					<label for="productPrice">Product Price:</label> <input type="text"
						id="productPrice" name="price"
						placeholder="Enter product price" value="${product.productPrice}"
						required>
				</div>

				<div class="form-group">
					<label for="productImage">Product Image:</label> <input type="file"
						id="productImage1" onchange="onPickImage1()" name="img1"
						accept="image/*"> <input type="file" id="productImage2"
						onchange="onPickImage2()" name="img2" accept="image/*">
				</div>


				<div class="form-group">
					<label for="productCategory">Category:</label> <select
						id="productCategory" name="cat" required>
						<option value="Mens"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Mens'}"> selected</c:if>>Mens</option>
						<option value="Womens"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Womens'}"> selected</c:if>>Womens</option>
						<option value="Kids"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'Kids'}"> selected</c:if>>Kids</option>

					</select>
				</div>

				<div class="form-group">
					<label for="productQuantity">Product Quantity:</label> <input
						type="number" id="productQuantity" name="quan"
						placeholder="Enter product quantity"
						value="${product.productQuantity}" required>
				</div>
				<button type="submit">Update Product</button>
			</form>
		</div>
		<div class="image-wrapper" style="display: flex; flex-direction: column;">
			<img src="view/images/${product.productImagePath1}" id="image1" height="300px"
				alt="Product Image"> <br><br><br><br><img
				src="view/images/${product.productImagePath2}" id="image2" height="300px"
				alt="Product Image">
		</div>
	</div>
	<jsp:include page="/view/JSP/Footer.jsp" />
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