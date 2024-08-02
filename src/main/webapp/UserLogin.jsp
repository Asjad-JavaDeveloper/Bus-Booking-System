<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }
  
  form {
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  input[type="text"], input[type="email"], input[type="password"] {
    width: 100%;
    height: 40px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  button[type="submit"] {
    width: 100%;
    height: 40px;
    background-color: #4CAF50;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  button[type="submit"]:hover {
    background-color: #3e8e41;
  }
  
 .text {
    text-align: center;
    margin-top: 20px;
  }
  
 .text a {
    text-decoration: none;
    color: #4CAF50;
  }
  
 .text a:hover {
    color: #3e8e41;
  }
</style>
</head>
<body>
  <form action="UserLogin" method="post">
    <h2>Login</h2>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br><br>
    <button type="submit">Login</button>
    <div class="text">
      <h3>don't have an account? <a href="UserRegister.jsp">Register</a></h3>
    </div>
  </form>
</body>
</html>