<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<jsp:include page="Header.jsp" />

	<div class="wrapper">
		<main>
			
			<section class="slider">
				<div class="slide">
					<img src="view/images/slideimg/1.png" alt="Image 1">
					<div class="content">
						<h2 style="margin-top:40px;">Welcome to our website</h2>
						<p style="margin-top:40px;">We're thrilled to have you here and hope you enjoy exploring our products and services.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/2.png" alt="Image 2">
					<div class="content">
						<h2 style="margin-top:40px;">Discover our products</h2>
						<p style="margin-top:40px;">Find the perfect item for your style and budget in our wide range of latest products. From clothing to accessories, we have everything you need to upgrade your wardrobe.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/3.png" alt="Image 3">
					<div class="content">
						<h2 style="margin-top:40px;">Get a discount today</h2>
						<p style="margin-top:40px;">Shop now and enjoy a special discount on your purchase. Use the code "DISCOUNT20" at checkout and get 20% off on all items.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/4.png" alt="Image 4">
					<div class="content">
						<h2 style="margin-top:40px;">New Arrival</h2>
						<p style="margin-top:40px;">Check out our latest collection of trendy clothes, shoes, and accessories for men and women.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/5.png" alt="Image 5">
					<div class="content">
						<h2 style="margin-top:40px;">Special Offer</h2>
						<p style="margin-top:40px;">Get up to 50% off on selected items in our store. Limited time offer only!</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/6.png" alt="Image 6">
					<div class="content">
						<h2 style="margin-top:40px;">New Season Collection</h2>
						<p style="margin-top:40px;">Be the first to grab the latest styles and trends of the season. Shop now and get free shipping on your first purchase.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/7.png" alt="Image 7">
					<div class="content">
						<h2 style="margin-top:40px;">Summer Essentials</h2>
						<p style="margin-top:40px;">Get ready for summer with our collection of swimwear, sunglasses, and beach accessories. Shop now and get 20% off on your first purchase.</p>
					</div>
				</div>
				<div class="slide">
					<img src="view/images/slideimg/8.png" alt="Image 8">
					<div class="content">
						<h2 style="margin-top:40px;">New Arrivals for Kids</h2>
						<p style="margin-top:40px;">Discover the latest collection of clothes, shoes, and toys for your little ones. Shop now and get free shipping on orders over $50.</p>
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
		
	</div>
	<jsp:include page="Footer.jsp" />

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
	top: 200px;
	left: 0;
	z-index: 1;
}
.slider .content {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 40%;
  background-color: rgba(0, 0, 0, 0.6); /* black background with 80% opacity */
  color: white;
  text-align: center;
  padding: 20px;
  box-sizing: border-box;
}
</style>