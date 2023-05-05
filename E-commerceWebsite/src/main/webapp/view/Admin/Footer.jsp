<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<style type="text/css">
*{
margin:0;
padding:0;
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

.content {
	position: absolute;
	margin-left: 20%;
	top: 0;
	left: 0;
	z-index: 1;
}
</style>
</head>
<body>
	<footer class="site-footer">
		<img src="view/Admin/Images/LOGO.png" alt="Description of the image" />
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
			<span>© 2023 All rights reserved</span> <a>License</a>
		</div>
		<div class="social-links">
			<a class="fa-brands fa-github"></a> <a class="fa-brands fa-linkedin"></a>
			<a class="fa-brands fa-docker"></a>
		</div>
	</footer>

</body>
</html>