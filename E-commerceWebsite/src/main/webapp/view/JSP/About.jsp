<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
	color: #333;
	background-color: #f5f5f5;
}
/* Style the header */
header {
	background-color: #333;
	color: #fff;
	padding: 20px;
	text-align: center;
}
/* Style the content container */
.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border: 1px solid #ddd;
	box-shadow: 0 0 10px #ddd;
}
/* Style the heading of each section */
h2 {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 10px;
}
/* Style the paragraphs */
p {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<jsp:include page="/view/JSP/Header.jsp" />

	<div class="container" style="margin: 30px auto;">
		<section>
			<h2>Our Story</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
				in mi ac enim ultricies finibus ac nec ante. Sed id tellus mauris.
				Fusce at neque vitae ipsum lacinia suscipit vel in est. Nulla
				facilisi.</p>
			<p>Proin aliquet quam at eros luctus blandit. Vivamus eu justo
				vitae elit faucibus lacinia vel vel massa. Fusce tincidunt, lorem eu
				bibendum aliquam, velit diam viverra lectus, a lacinia magna nibh ac
				nulla.</p>
		</section>
		<section>
			<h2>Team</h2>
			<p>Our team is made up of highly skilled professionals who are
				dedicated to delivering exceptional results for our clients. We
				believe in fostering a culture of collaboration and innovation, and
				we are always looking for new ways to improve our processes and stay
				ahead of the curve.</p>
		</section>
		<section>
			<h2>Company Info</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
				in mi ac enim ultricies finibus ac nec ante. Sed id tellus mauris.
				Fusce at neque vitae ipsum lacinia suscipit vel in est. Nulla
				facilisi.</p>
			<p>Proin aliquet quam at eros luctus blandit. Vivamus eu justo
				vitae elit faucibus lacinia vel vel massa. Fusce tincidunt, lorem eu
				bibendum aliquam, velit diam viverra lectus, a lacinia magna nibh ac
				nulla.</p>
			<p>
				123 Main Street<br>Anytown, USA 12345<br>Phone: (123)
				456-7890<br>Email: info@ourcompany.com
			</p>
		</section>
	</div>
	<jsp:include page="/view/JSP/Footer.jsp" />
</body>
</html>