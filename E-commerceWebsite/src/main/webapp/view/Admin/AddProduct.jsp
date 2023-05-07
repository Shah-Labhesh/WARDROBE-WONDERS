<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Products</title>

<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
}

.container {
	max-width: 800px;
	margin: 100px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: flex;
	/* Display container as a flexbox */
}

.form-wrapper {
	flex: 1;
	/* Take up all available space in the flex container */
	padding-right: 20px;
	/* Add some spacing between form and image */
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input, textarea, select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

textarea {
	resize: vertical;
}

button[type="submit"] {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #ffffff;
	text-align: center;
	font-weight: bold;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.image-wrapper {
	flex: 1;
	/* Take up all available space in the flex container */
	display: flex;
	/* Display image wrapper as a flexbox */
	align-items: center;
	/* Center the image vertically */
}

.image-wrapper img {
	max-width: 100%;
	/* Ensure image does not exceed container width */
}


.form-group label.radio-label {
  display: inline-block;
  cursor: pointer;
  padding: 5px 10px;
  background-color: #f2f2f2;
  border-radius: 5px;
  margin-right: 10px;
}

.form-group input[type="radio"]:checked + label.radio-label {
  background-color: #3399ff;
  color: #fff;
}

</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<div class="container">
		<div class="form-wrapper">
			<h1>Admin Panel - Add Product</h1>
			<form action="../../addProduct" method="post"
				enctype="multipart/form-data">
				<p>${error}</p>

				<div class="form-group">
					<label for="productId">Product ID:</label> <input type="text"
						id="productId" name="prodId" placeholder="Enter product ID"
						required>
				</div>
				<div class="form-group">
					<label for="productName">Product Name:</label> <input type="text"
						id="productName" name="prodName" placeholder="Enter product name"
						required>
				</div>
				<div class="form-group">
					<label for="productDescription">Product Description:</label>
					<textarea id="productDescription" rows="3" name="prodDesc"
						placeholder="Enter product description" required></textarea>
				</div>
				<div class="form-group">
					<label for="productPrice">Product Price:</label> <input type="text"
						id="productPrice" name="prodPrice"
						placeholder="Enter product price" required>
				</div>
				<div class="form-group">
					<label for="productRating">Product Rating:</label>
					<div>
						<input type="radio" id="productRating1" name="prodRating"
							value="1"> <label for="productRating1">1</label> <input
							type="radio" id="productRating2" name="prodRating" value="2">
						<label for="productRating2">2</label> <input type="radio"
							id="productRating3" name="prodRating" value="3"> <label
							for="productRating3">3</label> <input type="radio"
							id="productRating4" name="prodRating" value="4"> <label
							for="productRating4">4</label> <input type="radio"
							id="productRating5" name="prodRating" value="5"> <label
							for="productRating5">5</label>
					</div>
				</div>

				<div class="form-group">
					<label for="productImage">Product Image:</label> <input type="file"
						id="productImage" name="prodImg1" accept="image/*" required>
					<input type="file" id="productImage" name="prodImg2"
						accept="image/*" required>
				</div>


				<div class="form-group">
					<label for="productCategory">Category:</label> <select
						id="productCategory" name="prodCat" required>
						<option value="Mens">Mens</option>
						<option value="Womens">Womens</option>
						<option value="Kids">Kids</option>

					</select>
				</div>

				<div class="form-group">
					<label for="productQuantity">Product Quantity:</label> <input
						type="number" id="productQuantity" name="prodQuan"
						placeholder="Enter product quantity" required>
				</div>
				<button type="submit">Add Product</button>
			</form>
		</div>
		<div class="image-wrapper">
			<img src="view/Admin/Images/background.jpg" alt="Product Image">
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>