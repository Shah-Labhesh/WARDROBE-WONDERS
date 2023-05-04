<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Course work</title>
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>

<body>
<jsp:include page="/view/JSP/Header.jsp" />
	<div class="wrapper">
		<main>
			<!-- <header style="justify-content: space-around;">
				<div class="logo">
					<a href="#" class="brand"><img
						src="../images/navbar logo.png" alt="Image 1"></a> <br>

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
							<a href="/SignIn"><i class="fa fa-user"></i></a>&nbsp;&nbsp;
						</button>
					</form>
				</div>
			</header> -->
			<section class="slider">
				<div class="slide">
					<img src="../images/s1.png" alt="Image 1">
					<div class="content">
						<h1>Sisan</h1>
					</div>
				</div>
				<div class="slide">
					<img src="../images/s2.png" alt="Image 2">
				</div>
				<div class="slide">
					<img src="../images/s3.png" alt="Image 3">
					<div class="content">
						<h1>Sisan</h1>
					</div>
				</div>

			</section>
			<script>
				var slideIndex = 0;
				showSlides();

				function showSlides() {
					var i;
					var slides = document.getElementsByClassName("slide");
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";
					}
					slideIndex++;
					if (slideIndex > slides.length) {
						slideIndex = 1
					}
					slides[slideIndex - 1].style.display = "block";
					setTimeout(showSlides, 4000); // Change image every 4 seconds
				}
			</script>

		</main>
		<c:forEach var="prod" items="${productList}">

				<tr>
					<td><img src="view/images/${prod.productImagePath1}"
						width="50" height="50"
						style="margin: 0 20px; border-radius: 10px;" /> <img
						src="view/images/${prod.productImagePath2}" height="50px"
						width="50px" style="border-radius: 10px;" /></td>
					<td>${prod.productId}</td>
					<td>${prod.productName}</td>
					<td>${prod.productCat}</td>
					<td>${prod.productQuantity}</td>
					<td>${prod.productPrice}</td>
					<td>${prod.productDescription}</td>

					<td style="justify-content: space-evenly;"><a
						href="${pageContext.request.contextPath}/editProduct?id=${prod.productId}"><span>&#x270E;</span></a>&emsp;
						<a
						href="${pageContext.request.contextPath}/deleteProduct?id=${prod.productId}"><span>&#x1F5D1;</span></a>
					</td>
				</tr>

			</c:forEach>
			
		<!-- <footer class="site-footer">
			<img src="../images/LOGO.png" , alt="Description of the image" />
			<div class="links">
				<div>
					<h2>Platform</h2>
					<a>Directus Core</a>
				</div>
				<div>
					<h2>Cloud</h2>
					<a>Directus Core</a>
				</div>


			</div>
			<div class="legal">
				<span>2023 All rights reserved</span> <a>License</a>
			</div>
			<div class="social-links">
				<a class="fa-brands fa-github"></a> <a class="fa-brands fa-linkedin"></a>
				<a class="fa-brands fa-docker"></a>
			</div>
		</footer>
	</div> -->
	</div>
		<jsp:include page="/view/JSP/Footer.jsp" />
	</body>
</html>

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

a {
	text-decoration: none;
	color: #000000;
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

.site-footer {
	background-color: #333;
	color: #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding-top: 20px;
	padding-bottom: 20px;
	height: 250px;
	width: 100%;
	text-align: center;
	bottom: 0;
}

.site-footer img {
	border-radius: 70%;
	height: 50%;
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

.legal {
	margin-bottom: 0px;
	text-align: center;
	width: 100%;
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

.slider {
	width: 100%;
	overflow: hidden;
	height: 90%;
	overflow: hidden;
	display: flex;
	justify-content: center;
	position: relative;
}

.slide {
	position: relative;
	width: 100%;
	height: 90vh;
	overflow: hidden;
}

.slide img {
	position: absolute;
	width: 100%;
	height: 98%;
	top: 0;
	left: 0;
	max-width: 100%;
	object-fit: cover;
}

.slide:first-child {
	display: block;
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

.prev {
	left: 20px;
}

.next {
	right: 20px;
}

@media ( max-width : 1040px) {
}

.content {
	position: absolute;
	margin-left: 20%;
	top: 0;
	left: 0;
	z-index: 1;
}
</style>