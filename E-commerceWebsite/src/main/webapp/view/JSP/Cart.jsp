<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.jsp.JspTagException" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* CSS styles for the cart page */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

body {
	font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", Helvetica,
		Arial, sans-serif;
}

.container {
	max-width: 960px;
	margin: 60px auto;
	padding: 20px 200px;
	background-color: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

.total {
	text-align: right;
	font-weight: bold;
}

.container button {
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

.container button:hover {
	background-color: #3e8e41; /* Darker green */
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />


	<div class="container">
		<h1>Your Cart</h1>
		<table>
			<thead>
				<tr>
					<th></th>
					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:set var="totalPrice" value="0" />

				<c:forEach var="ct" items="${cartList}">
				<c:set var="Price" value="0" />

					<tr>
						<td><img src="view/images/${ct.img}" width="50" height="50"
							style="margin: 0 20px; border-radius: 10px;" /></td>
						<td>${ct.name}</td>
						<%-- Remove $ sign--%>
						<c:set var="price" value="${ct.price.substring(1)}" />
						<td>$${price}</td>
						<td>${ct.quan}</td>
						<td>$${price * ct.quan}</td>
						<c:set var="Price" value="${(price * ct.quan)}" />
						<td><a onclick="alert()"
							href="${pageContext.request.contextPath}/deleteCartItem?id=${ct.id}"><span>&#x1F5D1;</span></a>
						</td>
					</tr>
					<%-- Calculate total price --%>
					<c:set var="totalPrice" value="${totalPrice + (price * ct.quan)}" />
				</c:forEach>
				<%-- <c:set target="${session}" property="totalPrice" value="${totalPrice}" /> --%>
				<%session.setAttribute("totalPrice",pageContext.getAttribute("Price"));  %>
				<tr>
					<td colspan="4" class="total">Total:</td>
					<%-- Add $ sign back to the total price --%>
					<td>$${totalPrice}</td>
				</tr>
			</tbody>
		</table>
		
		<button
			onclick="window.location.href='/E-commerceWebsite/cartCheckOut'">Checkout</button>
	</div>

	<script>
		// Script to handle checkout button click
		function checkout() {
			alert("Redirecting to checkout page...");
			// Add your code to redirect to checkout page here
		}
		function alert(){
			alert("Cart item deleted!")
			
		}
	</script>

	<jsp:include page="/view/JSP/Footer.jsp" />
</body>
</html>