<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	margin-top: -33px;
	margin-right: 15px;
}

.profile-field label {
	display: flex;
	font-family: 'Open Sans', sans-serif;
	font-size: 16px;
	margin-top: 0px;
	margin-left: 25px;
	font-weight: bold;
}

.profile-field input {
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	display: flex;
	width: 30%;
	margin-top: -31px;
	margin-left: 200px;
}

.profile-field .save-btn {
	background-color: #82E088;
	border-radius: 50px;
	font-family: 'ArvoItalic', serif;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	border: none;
	padding: 12px 24px;
	text-align: center;
	text-decoration: none;
	display: block;
	margin: 0 auto;
	margin-right: 38%;
	margin-top: -5px;
	float: right;
}

.save-btn:hover {
	background-color: #60DD68;
}

.cancel-btn {
	background-color: transparent;
	border: none;
	color: blue;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	margin-left: 6px;
}

.cancel-btn:hover {
	color: red;
	border-color: red;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<div class="profseccontainer" style="margin-bottom: 60px">
		<div class="navcard navigation">
			<h2>Navigation</h2>
			<ul>
				<li><a href="/E-commerceWebsite/profile">Profile</a></li>
				<li><a href="#">Order History</a></li>
				<li><a href="/E-commerceWebsite/updateUserDetails">Update
						Details</a></li>
			</ul>
		</div>
		<div class="navcard dashboard">
			<div class="profile-header">
				<h2 style="font-size: 30px;">Update Profile</h2>
			</div>
			<form action="${pageContext.request.contextPath}/saveUserDetails" method="post"
				enctype="multipart/form-data">
				<div class="profile-body">
					<input type="file" name="userImage" id="userImage" onchange="onPickImage()" accept="image/*"/>
					<div class="profile-image">
						<img id="profile-img"
							src="view/images/${ur.userImagePath}" id="image" alt="Profile Image">

					</div>
					<div class="profile-field">
						<label for="name">Name:</label> <input type="text" id="name"
							name="name" value="${ur.userName}" required>
					</div>
					<div class="profile-field">
						<label for="contact">Contact:</label> <input type="text"
							id="contact" name="contact" value="${ur.userContact}"
							readonly="readonly" required>
					</div>
					<div class="profile-field">
						<label for="email">Email:</label> <input type="text" id="email"
							name="email" value="${ur.userEmail}" required>
					</div>
					<div class="profile-field">
						<label for="address">Address:</label> <input type="text"
							id="address" name="address"
							value="${ur.userAddress}" required>
					</div>
					<div class="profile-field">
						<label for="confirm-password">Password:</label> <input
							type="password" id="confirm-password" name="confirm-password"
							required>
					</div>
					<div class="profile-field">
						<button class="save-btn">Save</button>
					</div>
				</div>
			</form>
			<a style="margin:60px 60px 0px;" href="${pageContext.request.contextPath}/profile">Cancel</a>
						
		</div>

	</div>

	<jsp:include page="Footer.jsp" />
<script>
	function onPickImage() {
		var image = document.getElementById("profile-img");
		var imageChooser = document.getElementById("userImage");
		image.src = URL.createObjectURL(imageChooser.files[0]);
	}
</script>
</body>
</html>
