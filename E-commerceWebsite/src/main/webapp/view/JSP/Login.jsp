<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<link rel="stylesheet" href="../CSS/Register.CSS">
</head>
<body>
	<div class="container">

		<form id="login-form" method="post" action="${pageContext.request.contextPath}/UserLogin">

			<h2>Login</h2>
			<br>
			<br> 
			<div class="error">${error}</div>
			<label for="phone">Phone Number</label> <input type="tel"
				id="phone" name="phone" placeholder="9812345678" required> <label
				for="password">Password</label> <input type="password" id="password"
				name="password" placeholder="********" required><br>
			<br> <input type="submit" value="Login" />
			<div class="richtext">
				Not yet registered? <span><a href="${pageContext.request.contextPath}/SignUp">Sign Up</a></span>
			</div>
		</form>
	</div>

</body>


</html>
