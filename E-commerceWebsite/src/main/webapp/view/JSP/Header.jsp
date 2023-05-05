<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<style>
/* Header styling */
header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: #F5F5F5;
	height: 20px;
}

a {
	text-decoration: none;
}

header .logo {
	mix-blend-mode: multiply;
	/* blend the image color with the background */
}

.logo img {
	width: 150px; /* set the desired width */
	height: auto; /* set the height to auto to maintain aspect ratio */
}

html {
	width: 100%;
}

nav ul {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

nav li {
	margin-left: 20px;
}

nav a {
	font-size: 12px;
	font-family: Arial, sans-serif;
	font-weight: bold;
	color: black;
	text-decoration: none;
	text-transform: uppercase;
	padding: 20px;
}

.search form {
	display: flex;
	align-items: center;
}

.search input[type="text"] {
	padding: 8px;
	border-radius: 3px;
	border: none;
}

.search button {
	padding: 8px;
	border-radius: 3px;
	border: none;
	background-color: #ddd;
}

.cart a, .profile a {
	display: block;
	font-size: 24px;
	color: #fff;
	text-decoration: none;
	margin-left: 20px;
}

.cart a:hover, .profile a:hover {
	color: #ccc;
}

/* Main content styling */
.main-content {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	text-align: center;
}

body {
	height: 100%;
	margin: 0;
	display: flex;
	flex-direction: column;
}

.wrapper {
	flex: 1;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1;
}

.links {
	display: flex;
	justify-content: space-around;
	margin-bottom: 20px;
	width: 100%;
}

.links a {
	color: #fff;
	margin: 0 10px;
}


.social-links {
	display: flex;
	justify-content: center;
	width: 100%;
}

.fa-brands {
	color: #fff;
	font-size: 24px;
	margin: 0 10px;
}

/* Optional styling for the next/previous buttons */
.prev, .next {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	font-size: 24px;
	font-weight: bold;
	cursor: pointer;
}

.icon-button a{
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<div class="wrapper">
		<main>
			<header style="justify-content: space-around;">
				<div class="logo">
					<a href="#" class="brand"><img src="view/images/Group 88.png"
						alt="Image 1"></a> <br>

				</div>
				<nav style="margin-left: -25px;">
					<ul>
						<li><a href="/E-commerceWebsite/home">Home</a></li>
						<li><a href="/E-commerceWebsite/products">Shop</a></li>
						<li><a href="/E-commerceWebsite/about">About Us</a></li>
						<li><a href="/E-commerceWebsite/contact">Contact Us</a></li>
					</ul>
				</nav>
				<div class="search">
					<form>
						<input type="text" placeholder="Search...">
						<button class="icon-button"
							style="background-color: transparent; border: none;">
							<a href=""><i class="fa fa-search"></i> </a>&nbsp;&nbsp; 
							<a href="/E-commerceWebsite/cart"><i class="fa fa-shopping-cart"></i></a>&nbsp;&nbsp; 
							<a href="/E-commerceWebsite/SignIn"><i class="fa fa-user"></i></a>&nbsp;&nbsp;
						</button>
					</form>
				</div>
			</header>

		</main>
	</div>
</body>
</html>