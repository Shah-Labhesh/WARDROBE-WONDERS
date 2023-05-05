<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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

a:hover {
	text-decoration: underline;
}

h2 {
	display: flex;
	color: black;
	justify-content: start;
}

p {
	margin-left: 2px;
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />

	<div class="profseccontainer">
		<div class="navcard navigation">
			<h2>Navigation</h2>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Profile</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</div>
		<div class="navcard dashboard">
			<h2>Dashboard</h2>
			<p>Welcome to your profile!</p>
		</div>
	</div>

	<jsp:include page="/view/JSP/Footer.jsp" />
</body>
</html>