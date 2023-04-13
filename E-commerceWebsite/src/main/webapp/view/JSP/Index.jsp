<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Course work</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <div class="wrapper">
    <main>
      <h1>home page</h1>
      <a href="../../viewProducts">view products</a>

    </main>
    <footer class="site-footer">
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
        <span>� 2023 All rights reserved</span>
        <a>License</a>
      </div>
      <div class="social-links">
        <a class="fa-brands fa-github"></a>
        <a class="fa-brands fa-linkedin"></a>
        <a class="fa-brands fa-docker"></a>
      </div>
    </footer>
  </div>
</body>

</html>

<style>
  html {
    height: 200%;
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
    padding: 20px;
    width: 100%;
  }

  .site-footer img {
    width: 25%;
    height: 25%;
    border-radius: 70%;

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
</style>