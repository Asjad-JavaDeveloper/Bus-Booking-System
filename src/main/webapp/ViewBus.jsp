<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bus Booking</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    .container {
      width: 80%;
      margin: 40px auto;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-control {
      padding: 10px;
      font-size: 16px;
    }
    .btn {
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Bus Booking</h2>
    <form action="/search" method="get">
      <div class="form-group">
        <label for="From City">From City:</label>
        <input type="text" id="From City" placeholder="Enter City" name="city" class="form-control">
      </div>
      <div class="form-group">
        <label for="To City">To City:</label>
        <input type="text" id="To City" placeholder="Enter destination" name="category" class="form-control">
      </div>
      <button class="btn btn-outline-dark my-2 my-sm-1" type="submit">Search</button>
    </form>
  </div>
</body>
</html>