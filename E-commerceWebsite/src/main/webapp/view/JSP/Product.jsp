<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
<script src="https://kit.fontawesome.com/ab43062ecf.js"
	crossorigin="anonymous"></script>
<style>
.product-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.button-container {
	display: flex;
	align-items: center;
	justify-content: flex-end;
	margin-top: 10px;
}

.button-container i {
	margin-right: 10px;
}

.product-box {
	background-color: #f2f2f2;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	width: 300px;
	margin: 20px;
}

.product-box img {
	display: block;
	margin: 0 auto;
	width: 200px;
	height: 200px;
	object-fit: contain;
}

.product-box h2 {
	font-size: 1.5em;
	margin-top: 10;
	text-align: center;
}

.product-box p {
	font-size: 1.2em;
}

.product-box .price {
	color: #f00;
	font-weight: bold;
	text-align: end;
}

.product-box .description {
	margin-bottom: 10px;
	font-family: Georgia, serif;
}

.product-box .quantity {
	margin-bottom: 20px;
}

.product-box button {
	display: block;
	margin: 0 auto;
	padding: 10px;
	width: 150px;
	font-size: 1.2em;
	border-radius: 5px;
	cursor: pointer;
}

.product-box .add-to-cart-btn {
	background-color: #4CAF50;
	color: #fff;
	border: none;
	margin-bottom: 10px;
}

.product-box .shop-now-btn {
	background-color: #f00;
	color: #fff;
	border: none;
}

.filter-nav {
	display: flex;
	flex-direction: column;
	background-color: #f2f2f2;
	padding: 10px;
}

.filter-nav h3 {
	margin-top: 0;
}

.filter-item {
	margin: 10px 0;
}

.filter-item h4 {
	margin: 0;
}

.filter-item form {
	display: flex;
	align-items: center;
}

.filter-item input[type="text"] {
	width: 80px;
	margin-right: 10px;
}

.filter-item button {
	border: none;
	background-color: #4CAF50;
	color: white;
	padding: 5px 10px;
	border-radius: 5px;
	cursor: pointer;
}

.filter-item button:hover {
	background-color: #2e8b57;
}

.filter-item ul {
	list-style-type: none;
	padding: 0;
}

.filter-item li {
	margin-bottom: 5px;
}

.filter-item input[type="checkbox"] {
	margin-right: 5px;
}

.filter-item select {
	width: 100%;
	padding: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
	background-color: white;
	font-size: 1em;
}

.filter-item select:focus {
	outline: none;
	box-shadow: 0 0 5px #ccc;
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />

	<nav class="filter-nav">
		<h3>Filter By:</h3>
		<section style="display: flex; justify-content: space-evenly;">
			<div class="filter-item">
				<h4>Price Range:</h4>
				<form>
					<input type="text" placeholder="Minimum price" name="minPrice"
						id="minPrice"> <input type="text"
						placeholder="Maximum price" name="maxPrice" id="maxPrice">
					<button type="submit">Go</button>
				</form>
			</div>
			<div class="filter-item">
				<h4>Rating:</h4>
				<ul>
					<li><input type="radio" name="rating" value="5"> 5
						stars</li>
					<li><input type="radio" name="rating" value="4"> 4
						stars</li>
					<li><input type="radio" name="rating" value="3"> 3
						stars</li>
					<li><input type="radio" name="rating" value="2"> 2
						stars</li>
					<li><input type="radio" name="rating" value="1"> 1
						star</li>
				</ul>
			</div>
		</section>
		<div class="filter-item">
			<h4>Category:</h4>
			<select name="category" id="categorySelect">
				<option value="">Select a category</option>
				<option value="1">Mens</option>
				<option value="2">Womens</option>
				<option value="3">Kids</option>
			</select>
		</div>
	</nav>



	<div class="product-container">
		<c:forEach var="prod" items="${productList}">





			<div class="product-box">
				<img src="view/images/${prod.productImagePath1}" width="50"
					height="50" style="margin: 0 20px; border-radius: 10px;" />
				<h2>${prod.productName}</h2>
				<p class="price">${prod.productPrice}</p>
				<p class="description">${prod.productDescription}</p>
				<div class="button-container">
					<button class="shop-now-btn"
						onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=${prod.productId}'">Shop
						Now</button>
					<a href="${pageContext.request.contextPath}/addCart?id=${prod.productId}&quan=1"><i
						class="fa-solid fa-cart-plus"></i></a>
						
						

				</div>
			</div>

		</c:forEach>
	</div>




	<jsp:include page="/view/JSP/Footer.jsp" />

</body>
</html>