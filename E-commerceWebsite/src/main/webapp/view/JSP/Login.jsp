<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login Form</title>
	<link rel="stylesheet" href="../CSS/Login.CSS">
</head>
<body>
	<div class="container">

		<form id="login-form" method="post" action="UserLogin">

			<h2>Login</h2> <br><br>
			<label for="phone">Phone Number</label>
			<input type="tel" id="phone" name="phone" placeholder="9812345678" required>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" placeholder="********" required><br><br>
			<button type="submit">Login</button>
		</form>
	</div>
	<script src="script.js"></script>
</body>
<ul>
<li><a href="Register.html">Go to Second Page</a></li>
</ul>
</html>
