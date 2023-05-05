<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Grid layout */
.product-detail {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 30px;
	padding: 30px;
	background-color: #f8f8f8;
	color: #333;
	font-family: Arial, sans-serif;
}

.product-image {
	grid-column: 1/2;
	margin-right: 30px;
}

.product-info {
	grid-column: 2/3;
}

/* Typography */
.product-name {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 10px;
}

.product-description {
	font-size: 16px;
	margin-bottom: 20px;
}

.product-category {
	font-size: 14px;
	margin-bottom: 10px;
}

.product-price {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 20px;
}

.product-ratings {
	margin-bottom: 20px;
}

.product-quantity {
	margin-bottom: 20px;
}

/* Colors */
.product-detail {
	color: #333;
	background-color: #f8f8f8;
}

.product-name {
	color: #000;
}

.product-price {
	color: #f00;
}

.product-info button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 5px;
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
}

.product-info button:hover {
	background-color: #3e8e41; /* Darker green */
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />


	<div class="product-detail" style="margin: 50px auto;">

		<div class="product-image"
			style="display: flex; justify-content: space-evenly;">
			<img src="view/images/${product.productImagePath1}"
				style="margin-right: 20px;" width="400px" height="400px"
				alt="Product Image 1"> <img
				src="view/images/${product.productImagePath2}" width="400px"
				height="400px" alt="Product Image 2">
		</div>

		<div class="product-info" style="margin: 100px auto;">
			<h1 class="product-name">${product.productName}</h1>
			<p class="product-description">${product.productDescription}</p>
			<p class="product-category">${product.productCat}</p>
			<p class="product-price">${product.productPrice}</p>
			<div class="product-ratings">
				<span class="fa fa-star checked"></span> <span
					class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
				<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span>(3.0)</span>
			</div>
			<form method="get"
				action="${pageContext.request.contextPath}/addCart">
				<input type="hidden" name="id" value="${product.productId}" />
				<div class="product-quantity">
					<label for="quantity">Quantity:</label> <input type="text"
						id="quantity" name="quan" placeholder="1" required>
				</div>
				<button type="submit">Add to Cart</button>
			</form>

		</div>

	</div>
	<jsp:include page="/view/JSP/Footer.jsp" />
</body>
</html>