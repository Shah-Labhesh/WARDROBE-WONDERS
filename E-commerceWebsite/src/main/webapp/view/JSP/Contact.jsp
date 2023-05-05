<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h2 {
	font-family: 'Oswald', sans-serif;
	font-size: 30px;
}

p {
	font-family: 'Dancing Script', cursive;
}

.contact-info {
	display: flex;
	align-items: center;
	margin-bottom: 10px;
	color: white;
}

.contact-info .icon {
	margin-right: 10px;
}

.contact-info .text {
	font-size: 16px;
	font-weight: lighter;
}

.contact-info div {
	margin-top: 20px;
}

.social-media {
	margin-top: 140px;
}

.social-media a {
	margin-right: 12px;
	color: white;
}

input, textarea::placeholder {
	color: #999;
	opacity: 0.5;
}

.wrapper {
	flex: 1;
	display: flex;
	flex-direction: column;
}

.card {
	background-color: rgb(255, 255, 255);
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	transition: box-shadow 0.3s ease-in-out;
	padding: 20px;
	width: 40%;
	height: 60%;
	position: absolute;
	align-items: end;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.horz-card {
	background-color: rgb(47, 30, 155);
	box-shadow: 0px 2px 4px rgba(62, 23, 23, 0.1);
	padding: 20px;
	width: 270px;
	height: 350px;
	position: absolute;
	margin-left: -259px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	margin-top: 0px;
	z-index: 1;
}

h2 {
	text-align: center;
}

label {
	font-size: 18px;
	display: block;
	margin-top: 10px;
}

input[type="text"], input[type="email"] {
	width: 290px;
	padding: 12px;
	border: none;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
	outline: none !important;
	background-color: #f9f6f6;
	height: 45px;
}

textarea {
	width: 290px;
	padding: 12px;
	border: none;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
	outline: none !important;
	background-color: #f7f3f3;
	height: 95px;
}

button[type="submit"] {
	background-color: #63a0f2;
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
	margin-right: 60%;
}

button[type="submit"]:hover {
	background-color: #317bdc;
}

input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
	outline: none; /* Remove the default focus outline */
	box-shadow: 0 0 0 2px #63a0f2;
	/* Add a darker blue box-shadow to indicate focus */
}

.contactus {
	float: right;
	width: 40%;
	margin-right: 100px;
}

h2 {
	color: #fff;
}

input::placeholder, textarea::placeholder {
	font-family: Arial, sans-serif;
	font-size: 14px;
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />
	<section class="body-content" style="height: 80vh;">
		<div class="card">
			<h2 style="color: black; margin-top: 50px; margin-left: 103px;">Get
				in Touch</h2>
			${success}
			${error}
			<form class="contactus" action="message" method="post">

				<input type="text" id="name" name="name" placeholder="Your Name"
					required> <input type="email" id="email" name="email"
					placeholder="Your Email" required>

				<textarea id="message" name="message"
					placeholder="Enter your message here" required></textarea>

				<button type="submit">SEND</button>
			</form>
		</div>

		<div class="horz-card">
			<h2 style="margin-right: 38%; margin-top: 1px">Contact Us</h2>
			<div class="contact-info">
				<div class="icon">
					<i class="fa fa-map-marker"></i>
				</div>
				<div class="text">Sundarharaicha-4, Morang</div>
			</div>
			<div class="contact-info">
				<div class="icon">
					<i class="fa fa-envelope"></i>
				</div>
				<div class="text">w-wonders@gmail.com</div>
			</div>
			<div class="contact-info">
				<div class="icon">
					<i class="fa fa-phone"></i>
				</div>
				<div class="text">+977 9819029882</div>
			</div>

			<div class="social-media">
				<a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
				<a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
				<a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
			</div>


		</div>
	</section>

	<jsp:include page="/view/JSP/Footer.jsp" />

</body>
</html>