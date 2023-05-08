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
<title>Admin View Order</title>
<style>
/* Add CSS styles here for the blue and white theme */
* {
	margin: 0;
	padding: 0;
}

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
	margin: 60px 400px;
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
	<jsp:include page="Header.jsp" />
	<div class="container">
		<h1 style="margin:30px;">Admin View Order</h1>

		<table class="product-table">
			<tr>
				<th>Image</th>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>User contact</th>
				<th>Price</th>

			</tr>
			<c:forEach var="ord" items="${List}">

				<tr>
					<td><img src="view/images/${ord.img}" width="50" height="50"
						style="margin: 0 20px; border-radius: 10px;" /></td>
					<td>${ord.name}</td>
					<td>${ord.quan}</td>
					<td>${ord.user}</td>
					<td>${ord.price}</td>


				</tr>

			</c:forEach>

		</table>
		</div>
</body>
<jsp:include page="Footer.jsp" />
</html>
