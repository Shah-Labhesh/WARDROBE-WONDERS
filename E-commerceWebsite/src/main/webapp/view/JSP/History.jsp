<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Profile Page</title>
<link rel="stylesheet" href="view/CSS/overall.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'Open Sans', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f9f9f9;
}

.profseccontainer {
	display: flex;
	justify-content: center;
	align-items: flex-start;
	margin-top: 50px;
}

.navcard {
	border-radius: 10px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 200px;
	margin-right: 10px;
}

.navigation {
	background-color: #f7f7f7;
	color: black;
}

.dashboard {
	background-color: #ffffff;
	height: 400px;
	width: 600px;
}

h2 {
	margin-top: 0;
}

ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

li {
	margin-bottom: 10px;
}

a {
	color: #333;
	text-decoration: none;
}

h2 {
	display: flex;
	color: black;
	justify-content: start;
}

p {
	margin-left: 2px;
}

.profile-image img {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	object-fit: contain;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 10px;
	margin-top: -48px;
	margin-right: 15px;
}

.profile-field label {
	font-family: 'Open Sans', sans-serif;
	font-size: 16px;
	margin-top: 40px;
	margin-left: 25px;
	font-weight: bold;
}

.profile-field span {
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	margin-top: 50px;
	margin-left: 30px;
}

.logout {
	background-color: transparent;
	border: none;
	color: blue;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	margin-left: 6px;
	float: right;
}

.logout:hover {
	color: red;
	border-color: red;
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />


		<%-- <c:forEach var="ur" items="${user}"> --%>
			<div class="profseccontainer" style="margin-bottom:50px;">
				<div class="navcard navigation">
					<h2>Navigation</h2>
					<ul>
						<li><a href="/E-commerceWebsite/profile">Profile</a></li>
						<li><a href="/E-commercerWebsite/history">Order History</a></li>
						<li><a href="/E-commerceWebsite/updateUserDetails">Update Details</a></li>
						<li><a href="/E-commerceWebsite/changePass">Change Password</a></li>
					</ul>
				</div>
				<div class="navcard dashboard">
					<div class="profile-header">
						<h2 style="font-size: 30px;">Order History</h2>
					</div>
					<div class="profile-body">
					
						
					</div>
				</div>
			</div>
		<%-- </c:forEach> --%>
		<jsp:include page="/view/JSP/Footer.jsp" /></body>
</html>
