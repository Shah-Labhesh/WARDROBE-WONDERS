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
<script src="https://kit.fontawesome.com/ab43062ecf.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap"
	rel="stylesheet">
</head>

<body>
	<jsp:include page="/view/JSP/Header.jsp" />
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
			<div class="product1">
				<div class=prodimg1>
					<div class="image-container">
						<img src="view/images/prodImage/11.png" alt="Image 1">
					</div>
					<div class="prodDesc">
						<h1>LINEN COORDS</h1>
						<br>
						<p>A cool linen blend in pastel shades</p>
						<br>

						<section>
							<a style="margin-left: 20px;"
								href="${pageContext.request.contextPath}/addCart?id=1&quan=1"><i
								class="fa-solid fa-cart-plus"></i></a>
							<button class="curved-button1"
								onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=1'">View
								more!</button>
						</section>

					</div>

				</div>
				<div class=prodimg2>
					<img style="max-width: 50%;" src="view/images/prodImage/12.png"
						alt="Image 1">
				</div>

			</div>
			<div class="product2">
				<div class=prodimg2>
					<img style="max-width: 67%;" src="view/images/prodImage/22.png"
						alt="Image 1">
				</div>
				<div class=prodimg1>
					<div class="image-container">
						<img src="view/images/prodImage/21.png" alt="Image 1">
					</div>
					<div class="prodDesc">
						<h1>FORMAL BLACK SHIRT</h1>
						<br>
						<p>100% silk, 100% office-ready</p>
						<br>
						<section>
							<a style="margin-left: 20px;"
								href="${pageContext.request.contextPath}/addCart?id=2&quan=1"><i
								class="fa-solid fa-cart-plus"></i></a>
							<button class="curved-button2"
								onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=2'">View
								more!</button>
						</section>

					</div>
				</div>

			</div>
			<div class="product3">
				<div class=prodimg1>
					<div class="image-container">
						<img src="view/images/prodImage/31.png" alt="Image 1">
					</div>
					<div class="prodDesc">
						<h1>THE WORK JACKET</h1>
						<br>
						<p>100% cotton, made baggy for comfort</p>
						<br>
						<section>
							<a style="margin-left: 20px;"
								href="${pageContext.request.contextPath}/addCart?id=3&quan=1"><i
								class="fa-solid fa-cart-plus"></i></a>
							<button class="curved-button3"
								onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=3'">View
								more!</button>
						</section>

					</div>
				</div>
				<div class=prodimg2>
					<img src="view/images/prodImage/32.png" alt="Image 1">
				</div>
			</div>
	</div>
	<div class="product4">
		<div class=prodimg1>
			<div class="image-container">
				<img src="view/images/prodImage/41.png" alt="Image 1">
			</div>
			<div class="prodDesc">
				<h1>JEANS JACKET</h1>
				<br>
				<p>100% cotton, made baggy for comfort</p>
				<br>
				<section>
					<a style="margin-left: 20px;"
						href="${pageContext.request.contextPath}/addCart?id=4&quan=1"><i
						class="fa-solid fa-cart-plus"></i></a>
					<button class="curved-button4"
						onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=4'">View
						more!</button>
				</section>

			</div>
		</div>
		<div class=prodimg2>
			<img style="max-width: 60%;" src="view/images/prodImage/42.png"
				alt="Image 1">
		</div>
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
	width: 150px;
	/* set the desired width */
	height: auto;
	/* set the height to auto to maintain aspect ratio */
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

/* for homepage products*/
.product1 {
	object-fit: cover;
	height: 700px;
	background-color: #E0D9FF;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.prodimg1 {
	position: relative;
	width: 370px;
	height: 530px;
	background-color: white;
	position: relative;
	overflow: hidden;
}

.prodimg2 {
	margin-top: 20px;
	text-align: center;
}

.product1 .prodimg1 .prodDesc {
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 0px;
	height: 27%;
	z-index: 1;
}

.product2 .prodimg1 .prodDesc {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 0px;
	height: 27%;
	z-index: 1;
}

.product3 .prodimg1 .prodDesc {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 0px;
	height: 27%;
	z-index: 1;
}

.product4 .prodimg1 .prodDesc {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 0px;
	height: 27%;
	z-index: 1;
}

.product1 .prodimg2 {
	width: 600px;
	height: 400px;
	background-color: white;
	margin-top: 130px;
}

.product2 {
	object-fit: cover;
	height: 700px;
	background-color: #B9D6C0;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}

.product2 .prodimg1 {
	width: 350px;
	height: 510px;
	background-color: white;
}

.product2 .prodimg2 {
	width: 500px;
	height: 600px;
	background-color: white;
}

.product3 {
	object-fit: cover;
	height: 700px;
	background-color: #A6CEEB;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}

.product3 .prodimg1 {
	width: 370px;
	height: 530px;
	background-color: white;
}

.product3 .prodimg2 {
	width: 500px;
	height: 400px;
	background-color: white;
	margin-bottom: 131px;
}

.product4 {
	object-fit: cover;
	height: 700px;
	background-color: #C8A2DF;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}

.product4 .prodimg1 {
	width: 370px;
	height: 530px;
	background-color: white;
}

.product4 .prodimg2 {
	width: 600px;
	height: 400px;
	background-color: white;
	margin-top: 130px;
}

.curved-button1 {
	border: none;
	border-radius: 20px;
	background-color: #C69BE0;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	margin-top: -6px;
	margin-left: 180px;
}

.curved-button2 {
	border: none;
	border-radius: 20px;
	background-color: #B1D3B9;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	margin-top: -1px;
	margin-left: 180px;
}

.curved-button3 {
	border: none;
	border-radius: 20px;
	background-color: #1D9BF0;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	margin-top: 4px;
	margin-left: 180px;
}

.curved-button4 {
	border: none;
	border-radius: 20px;
	background-color: #9760B9;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	margin-top: 6px;
	margin-left: 180px;
	pointer-events: none;
}

.product1 .prodimg1 img {
	width: 100%;
	height: 100%;
	object-fit: contain;
	top: 0;
	left: 0;
}

.product2 .prodimg1 img {
	width: 100%;
	height: 100%;
	object-fit: contain;
	top: 0;
	left: 0;
}

.product3 .prodimg1 img {
	width: 100%;
	height: 100%;
	object-fit: contain;
	top: 0;
	left: 0;
}

.product4 .prodimg1 img {
	width: 100%;
	height: 100%;
	object-fit: contain;
	top: 0;
	left: 0;
}

.image-container {
	flex-basis: 100%;
	max-width: 100%;
	height: 73%;
}

.prodimg2 img {
	max-width: 100%;
	height: auto;
}

h1 {
	font-family: 'Oswald', sans-serif;
	margin-left: 25px;
	margin-top: 5px;
}

p {
	font-family: 'Barlow Medium', sans-serif;
	margin-top: -48px;
	margin-left: 26px;
	display: block;
}
.slider .content {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 40%;
  background-color: rgba(0, 0, 0, 0.8); /* black background with 80% opacity */
  color: white;
  text-align: center;
  padding: 20px;
  box-sizing: border-box;
}

</style>