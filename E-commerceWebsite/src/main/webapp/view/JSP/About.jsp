<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us</title>
  <link rel="stylesheet" href="style.css">
  <style>
   button {
  display: inline-block;
  padding: 12px 24px;
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
  background-color: #2196f3;
  border: none;
  border-radius: 4px;
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin-top: 40px;
}


button:hover {
  background-color: #0d8bf3;
}

    .about {
      margin-top: 50px;
      text-align: center;
      background-color: aliceblue;
    }

    .about h1 {
      font-size: 36px;
      margin-bottom: 20px;
    }

    .about p {
      font-size: 18px;
      color: #666;
      margin-bottom: 50px;
    }

    .team-members {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
    }

    .team-member {
      width: 25%;
      height: 400px; /* Set a fixed height for all team members */
      margin-right: 30px;
      margin-bottom: 30px;
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
    
    .container {
      background-color: aliceblue;
    }
    
    .team-member img {
      max-width: 200px;
      border-radius: 50%;
      margin-bottom: 10px;
    }

    .team-member h2 {
      font-size: 24px;
      margin-bottom: 5px;
    }

    .team-member p {
      font-size: 18px;
      color: #666;
      margin: 0;
    }
    h2 {
  font-size: 24px;
  color: #333;
  text-align: center;
  margin-bottom: 10px;
}

  </style>
</head>
<body>
<jsp:include page="Header.jsp"/>
  <section class="about">
    <h1>About Us</h1>
    <p>We are a team of experienced professionals who are passionate about providing quality products and excellent customer service. Get to know us better below!</p>
    <div class="container">
      <div class="team-members">
        <div class="team-member">
          <img src="view/images/sajjan.jpg" alt="Team Member 1">
          <h2>Sajjan Poudel</h2>
          <h3>Sacarologist@gmail.com</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis ratione officiis aperiam quam maiores quidem rerum ut aliquid consectetur sequi ipsa a excepturi debitis sed quis magnam quo, nostrum ab!</p>
        </div>
        <div class="team-member">
          <img src="view/images/labs.jpg" alt="Team Member 2">
          <h2>Labesh Shah</h2>
          <h3>Labesh.Shah@gmail.com</h3>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tenetur praesentium quam vitae magni et esse cum quos, distinctio expedita magnam corrupti autem, consequatur itaque inventore. Nulla recusandae cumque exercitationem itaque?</p>
        </div>
      </div>
      <div class="team-members">
        <div class="team-member">
          <img src="view/images/photo.jpg" alt="Team Member 3">
          <h2>Sisan Tamang</h2>
          <h3>raitomahang@gmail.com</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam nostrum soluta autem omnis, ipsam magni quas totam consectetur commodi laudantium.</p>
        </div>
        <div class="team-member">
          <img src="view/images/san.jpg" alt="Team Member 4">
          <h2>Sanjog Mehta</h2>
          <h3>Sanjogmehta8@gmail.com</h3>
          <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis, debitis. Molestias perspiciatis assumenda, vero quia ut officiis iste voluptatibus neque!
          </p>
        </div>
      </div>
      <!-- <button>Message Us</button> -->
    </div>
  </section>
  <jsp:include page="Footer.jsp"/>
</body>
</html>
