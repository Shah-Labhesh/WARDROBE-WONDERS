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
<meta charset="UTF-8">
<title>View Products</title>
<style>
/* CSS for styling the table */
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

th {
	background-color: #008CBA;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* CSS for the page heading */
h1 {
	text-align: center;
	margin-top: 50px;
	color: #008CBA;
}
</style>
</head>
<body>
	<h1>View Products</h1>
	<br>
	<a href="AddProduct.jsp">Add new product</a>


	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Category</th>
			<th>Image</th>
			<th>Image</th>
			<th>Quantity</th>
			<th>Actions</th>
			
		</tr>
		<c:forEach var="prod" items="${productList}">
		
			<tr>
			<td>${prod.productId}</td>
			<td>${prod.productName}</td>
			<td>${prod.productDescription}</td>
			<td>${prod.productPrice}</td>
			<td>${prod.productCat}</td>
			<td>${prod.productImagePath1}</td>
			<td>${prod.productImagePath2}</td>
			<!--  <td><img src="images/${prod.productImagePath1}" height="100px" width="100px"/></td>
			<td><img src="images/${prod.productImagePath2}" height="100px" width="100px"/></td>-->
			<td>${prod.productQuantity}</td>
			<td><a href="editProduct?id=${prod.productId}">Edit</a>  <a href="">Delete</a></td>
			</tr>
		
		</c:forEach>
	</table>
	<img alt="not found" src="images/prodImage/11.png">
</body>
</html>
