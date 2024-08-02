<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus Booking</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: linear-gradient(to bottom, #f2f2f2, #cccccc);
    height: 100vh;
    margin: 0;
  }
  
  h1 {
    text-align: center;
    color: #333;
    font-size: 36px;
    margin-bottom: 20px;
  }
  
  form {
    margin: 20px;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  button[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  button[type="submit"]:hover {
    background-color: #3e8e41;
  }
  
 .btn-secondary {
    background-color: #fff;
    color: #090909;
    border: 1px solid #ededed;
  }
  
 .btn-secondary:hover {
    background-color: #f7f7f7;
  }
  
 .bus-icon {
    font-size: 48px;
    color: #333;
    margin: 20px;
  }
</style>
</head>
<body>
  <h1><i class="fas fa-bus bus-icon"></i> Bus Booking Page</h1>
  <form action="UserRegister.jsp" method="post">
    <button type="submit" class="btn btn-secondary btn-lg" id="but2">Get Started</button>
  </form>
  <form action="UserLogin.jsp" method="post">
    <li><button class="Signup" type="submit">Login</button></li>
  </form>
  <br><br>
  <form action="UserRegister.jsp" method="post">
    <li><button class="Signup" type="submit">Sign Up</button></li>
  </form>
</body>
</html>