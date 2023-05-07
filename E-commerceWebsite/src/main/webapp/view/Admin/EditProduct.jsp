<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Update Product details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
}

.container {
	max-width: 800px;
	margin: 100px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: flex;
	/* Display container as a flexbox */
}

.form-wrapper {
	flex: 1;
	/* Take up all available space in the flex container */
	padding-right: 20px;
	/* Add some spacing between form and image */
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input, textarea, select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

textarea {
	resize: vertical;
}

button[type="submit"] {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #ffffff;
	text-align: center;
	font-weight: bold;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.image-wrapper {
	flex: 1;
	/* Take up all available space in the flex container */
	display: flex;
	/* Display image wrapper as a flexbox */
	align-items: center;
	/* Center the image vertically */
}

.image-wrapper img {
	max-width: 100%;
	/* Ensure image does not exceed container width */
}
</style>
</head>

<body>
	<jsp:include page="Header.jsp" />
	<div class="container">
		<div class="form-wrapper">
			<h1>Admin Panel - Edit product</h1>
			<form action="up" method="post" enctype="multipart/form-data">
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
						id="productPrice" name="price" placeholder="Enter product price"
						value="${product.productPrice}" required>
				</div>
				<div class="form-group">
					<label for="productRating">Product Rating:</label>
					<div>
						<input type="radio" id="productRating1" name="prodRating" value="1" <c:if test="${product.productRating eq '1'}"> checked </c:if> /> <label for="productRating1">1</label> 
						<input type="radio" id="productRating2" name="prodRating" value="2" <c:if test="${product.productRating eq '2'}"> checked </c:if> /> <label for="productRating2">2</label> 
						<input type="radio" id="productRating3" name="prodRating" value="3" <c:if test="${product.productRating eq '3'}"> checked </c:if> /> <label for="productRating3">3</label> 
						<input type="radio" id="productRating4" name="prodRating" value="4" <c:if test="${product.productRating eq '4'}"> checked </c:if> /> <label for="productRating4">4</label> 
						<input type="radio" id="productRating5" name="prodRating" value="5" <c:if test="${product.productRating eq '5'}"> checked </c:if> /> <label for="productRating5">5</label>
					</div>
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
							<c:if test="${fn:toLowerCase(product.productCat) eq 'mens'}">
										selected </c:if>>Mens</option>
						<option value="Womens"
							<c:if
										test="${fn:toLowerCase(product.productCat) eq 'womens'}"> selected </c:if>>Womens
						</option>
						<option value="Kids"
							<c:if test="${fn:toLowerCase(product.productCat) eq 'kids'}">
										selected </c:if>>Kids</option>

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
		<div class="image-wrapper"
			style="display: flex; flex-direction: column;">
			<img src="view/images/${product.productImagePath1}" id="image1"
				height="300px" alt="Product Image"> <br>
			<br>
			<br>
			<br>
			<img src="view/images/${product.productImagePath2}" id="image2"
				height="300px" alt="Product Image">
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
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