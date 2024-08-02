<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="container-fluid ">
    <div style="box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;" class="card my-2 py-5">
    
    
        
        
           <table style="margin-top: -48px;text-align: center;" border="1" ;">
    
    <tr>
   <th>Sr. No</th>
        <th>bus_Image</th>
        <th>bus_Name</th>
        <th>bus_Owner</th>
         <th>State</th>
          <th>City</th>
        <th>Price</th>
        <th>Date</th>
        <th>Category</th>
        
       
        <th>Delete</th>
        <th>Update</th>
    </tr>
    
   <c:forEach var="addm" items="${busList}">
        <tr>
            <td>${addm.id}</td>
            <td><img src="${addm.imageUrl}" alt="addm Image" width="100px" height="100px"></td>

            <td>${addm.state}</td>
            <td>${addm.city}</td>
            <td>${addm.price}</td>
            <td>${addm.date}</td>
            <td>${addm.category}</td>
           
           
            <td><button><a style="text-decoration:none;" href="<c:url value='/delete/${addm.id}'/>">Delete</a></button></td>
            <td><button><a style="text-decoration:none;" href="${addm.id}">Edit</a></button></td>
        </tr>
    </c:forEach>
 
    </table>

         
         
    </div>
    </div>
</body>
</html>