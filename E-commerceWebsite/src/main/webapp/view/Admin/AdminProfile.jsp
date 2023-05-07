<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}




.profile {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.2);
	flex: 1;
	margin-right: 20px;
}

.profile h2 {
	margin-top: 0;
}



</style>
</head>
<body>
<jsp:include page="Header.jsp"/>

	<main style="margin:100px auto; ">
		<section class="profile" style="padding:80px;">
			<h2>Welcome, Admin!</h2>
			<p>Full Name: Admin</p>
			<p>Email: admin@gmail.com</p>
			<br><br>

		<a href="/E-commerceWebsite/logout" style="color: black; font-size:20px;" >Logout</a>
		</section>
	</main>

	<jsp:include page="Footer.jsp"/>
</body>
</html>
