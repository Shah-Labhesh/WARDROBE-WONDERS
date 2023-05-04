<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
  <script src="https://kit.fontawesome.com/ab43062ecf.js" crossorigin="anonymous"></script>
  <style>
  .product-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
.button-container {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  margin-top: 10px;
}

.button-container i {
  margin-right: 10px;
}


.product-box {
  background-color: #f2f2f2;
  border: 1px solid #ddd;
  border-radius: 5px;
  padding: 20px;
  width: 300px;
  margin: 20px;
}

.product-box img {
  display: block;
  margin: 0 auto;
  width: 200px;
  height: 200px;
  object-fit: contain;
}

.product-box h2 {
  font-size: 1.5em;
  margin-top: 10;
  text-align: center;
}

.product-box p {
  font-size: 1.2em;
}

.product-box .price {
  color: #f00;
  font-weight: bold;
  text-align: end;
}

.product-box .description {
  margin-bottom: 10px;
  font-family: Georgia, serif;



}


.product-box .quantity {
  margin-bottom: 20px;
}

.product-box button {
  display: block;
  margin: 0 auto;
  padding: 10px;
  width: 150px;
  font-size: 1.2em;
  border-radius: 5px;
  cursor: pointer;
}

.product-box .add-to-cart-btn {
  background-color: #4CAF50;
  color: #fff;
  border: none;
  margin-bottom: 10px;
}

.product-box .shop-now-btn {
  background-color: #f00;
  color: #fff;
  border: none;
}

  </style>
</head>
<body>
		<jsp:include page="/view/JSP/Header.jsp" />

  <div class="product-container">
    <c:forEach var="prod" items="${productList}">

				

			
    
    <div class="product-box">
      <img src="view/images/${prod.productImagePath1}" width="50" height="50" style="margin: 0 20px; border-radius: 10px;" />
      <h2>${prod.productName}</h2>
      <p class="price">${prod.productPrice}</p>
      <p class="description">${prod.productDescription}</p>
      <div class="button-container">
        <button class="shop-now-btn" onclick="window.location.href='${pageContext.request.contextPath}/productDetails?id=${prod.productId}'">Shop Now</button>
        <a href="${pageContext.request.contextPath}/addCart?id=${prod.productId}"><i class="fa-solid fa-cart-plus"></i></a>
      
      </div>
    </div>
    
    </c:forEach>
    </div>
    

  <!-- <div class="product-container">
    <div class="product-box">
      <img src="images/1.1.webp" alt="Product Image">
      <h2>Jeans Jacket</h2>
      <p class="price">$19.99</p>
      <p class="description">Product Description 1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <div class="button-container">
        <button class="shop-now-btn">Shop Now</button>
        <i class="fa-solid fa-cart-plus"></i>
      
      </div>
    </div>
    
    <div class="product-box">
      <img src="images/1.jpg" alt="Product Image">
      <h2>Light Blue Jeans Jacket</h2>
      <p class="price">$29.99</p>
      <p class="description">Product Description 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <div class="button-container">
        <button class="shop-now-btn">Shop Now</button>
        <i class="fa-solid fa-cart-plus"></i>
      
      </div>
    </div>
    
    <div class="product-box">
      <img src="images/13.png" alt="Product Image">
      <h2>Maroon kurtha</h2>
      <p class="price">$39.99</p>
      <p class="description">Product Description 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <div class="button-container">
        <button class="shop-now-btn">Shop Now</button>
        <i class="fa-solid fa-cart-plus"></i>
      
      </div>
    </div>
  </div> -->
  
  		<jsp:include page="/view/JSP/Footer.jsp" />
  
</body>
</html>