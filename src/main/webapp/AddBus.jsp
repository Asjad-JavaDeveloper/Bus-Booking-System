<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addbus" method="post">
      <div class="input-box">
        <input type="text" name="busname" placeholder="Enter bus name" required>
      </div>
      <div class="input-box">
        <input type="text" name="proowner" placeholder="Enter bus Company" required>
      </div>
      <div class="input-box">
        <input type="number" name="price" placeholder="Enter Price" required>
      </div>
      <div class="input-box">
        <input type="date" name="date" placeholder="Enter Date" required>
      </div>
     
         <div class="input-box">
        <input type="text" name="state" placeholder="Enter your city" required>
      </div>
      
       <div class="input-box">
        <input type="text" name="city" placeholder="Enter your Destination" required>
      </div>
      
       
      
       <div class="input-box">
        <input type="text" name="imageUrl" placeholder="Enter Image Url" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="location" placeholder="Enter location Url" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="Desc" placeholder="Enter description" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="features" placeholder="Enter features" required>
      </div>
     
      <div class="input-box button">
        <input type="Submit" value="Add Bus">
      </div>
      
   
    </form>
     <a href="Adminview.jsp">
       <img style="max-width:50px;position: relative;
    top: -435px;
    left: -73px;
" alt="" src="/img/previous.png">   </a>
</body>
</html>