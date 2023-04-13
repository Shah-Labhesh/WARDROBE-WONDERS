<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	<link rel="stylesheet" href="../CSS/Register.CSS">
</head>
<body>
	<div class="container">
		<form id="login-form" method="post" action="../../UserRegistration" enctype="multipart/form-data">
			<h2>Register Now</h2> <br><br>
			<label for="name">User Name</label>
			<input type="text" id="username" name="fullname" placeholder="john doe" required>
			<label for="phone">Phone Number</label>
			<input type="tel" id="phone" name="phone" placeholder="9812345678" required>
			<label for="email">Email</label>
			<input type="email" id="email" name="email" placeholder="johndoe@gmail.com" required>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" placeholder="********" required>
			<!--  <label for="Cpassword">Confirm Password</label>
			<input type="password" id="Cpassword" name="confirmPassword" placeholder="********" required><br><br>-->
			<label for="Picture">User Image</label>
			<input type="file" id="Picture" name="userImage" required accept="image/*"> 
			<input type="submit" value="Register"/>
		</form>
	</div>
	<script src="script.js"></script>
    <a href="Login.html">Go to Second Page</a>

</body>
</html>
