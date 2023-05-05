<%@page import="model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin View Products</title>
<style>
/* Add CSS styles here for the blue and white theme */
body {
	background-color: #f8f8f8;
	font-family: Arial, sans-serif;
}

.container {
	margin: 20px;
}

.search-container {
	display: flex;
	justify-content: flex-end;
	align-items: end;
	margin-bottom: 20px;
}

.search-input {
	flex: 1;
	padding: 10px;
	border: none;
	border-radius: 4px;
	margin: 0px;
	height: 20px;
	/* Update the height value to adjust the height of the search bar */
	width: 10px;
	/* Update the width value to adjust the width of the search bar */
}

.search-button {
	margin-left: 10px;
	padding: 10px;
	border: none;
	border-radius: 4px;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

.add-product-button {
	margin-bottom: 20px;
	padding: 10px;
	border: none;
	border-radius: 4px;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

.product-table {
	width: 100%;
	border-collapse: collapse;
}

.product-table th, .product-table td {
	padding: 10px;
	text-align: left;
	border: 1px solid #ddd;
}

.product-table th {
	background-color: #007bff;
	color: #fff;
}

.product-table tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	color: #000;
	text-decoration: none;
}
</style>
</head>
<body>
<jsp:include page="/view/JSP/Header.jsp" />
	<div class="container">
		<h1>Admin View Products</h1>
		<form class="search-container"
			action="${pageContext.request.contextPath}/searchProducts">
			<input type="text" id="searchInput" name="search"
				class="search-input" placeholder="Search by category, name, price">
			<button class="search-button">
				<b>Search</b>
			</button>
		</form>
		<button class="add-product-button"
			onclick="location.href='view/JSP/AddProduct.jsp'">
			<b>Add Product</b>
		</button>
		${success} ${error}
		<table class="product-table">
			<tr>
				<th>Image</th>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Category</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Description</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="prod" items="${productList}">

				<tr>
					<td><img src="view/images/${prod.productImagePath1}"
						width="50" height="50"
						style="margin: 0 20px; border-radius: 10px;" /> <img
						src="view/images/${prod.productImagePath2}" height="50px"
						width="50px" style="border-radius: 10px;" /></td>
					<td>${prod.productId}</td>
					<td>${prod.productName}</td>
					<td>${prod.productCat}</td>
					<td>${prod.productQuantity}</td>
					<td>${prod.productPrice}</td>
					<td>${prod.productDescription}</td>

					<td style="justify-content: space-evenly;"><a
						href="${pageContext.request.contextPath}/editProduct?id=${prod.productId}"><span>&#x270E;</span></a>&emsp;
						<a
						href="${pageContext.request.contextPath}/deleteProduct?id=${prod.productId}"><span>&#x1F5D1;</span></a>
					</td>
				</tr>

			</c:forEach>
		</table>
	

	<jsp:include page="/view/JSP/Footer.jsp" />

</body>
</html>
