<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert edit</title>
</head>
<body>
<div style="margin-left: 70px;"  class="wrapper">
      <h2>Edit Property</h2>
     <c:if test="${not empty addm}">
        <form action="/edit/${addm.id}" method="post">
   
    
   
      <div class="input-box">
        <input type="text" name="proname" value="${pro.busname}"  >
      </div>
      <div class="input-box">
        <input type="text" name="proowner" value="${pro.busowner}">
      </div>
      <div class="input-box">
        <input type="number" name="price" value="${pro.price}">
      </div>
      <div class="input-box">
        <input type="date" name="date" value="${pro.date}">
      </div>
     
         <div class="input-box">
        <input type="text" name="state" value="${pro.state}">
      </div>
      
       <div class="input-box">
        <input type="text" name="city"value="${pro.city}">
      </div>
      
       <div class="input-box">
        <input type="text" name="category" value="${pro.category}">
      </div>
      
       <div class="input-box">
        <input type="text" name="imageUrl" value="${pro.imageUrl}">
      </div>
      
      <div class="input-box">
        <input type="text" name="location" value="${pro.location}">
      </div>
   <!--     
       <div class="input-box">
        <input type="text" name="Desc" value="${pro.desc}">
      </div>
      
      <div class="input-box">
        <input type="text" name="features" value="${pro.features}">
      </div>
     
     -->
     
      <div class="input-box button">
        <input type="Submit" value="Update">
      </div>
      
   
    
   

   </form>
    </c:if>
      </div>
    
  <a href="/viewpro">
       <img style="max-width:50px;position: relative;
   top: -368px;
    left: -73px;
" alt="" src="/img/previous.png">   </a>

</body>
</html>