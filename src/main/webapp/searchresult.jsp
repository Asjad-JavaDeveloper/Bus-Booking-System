<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="card-container">
    <c:forEach var="pro" items="${busList}">
        <div class="card">
            <c:if test="${not empty pro.imageUrl}">
         <a href="ViewProDesc.jsp?busId=${pro.id}&amp;busname=${pro.busname}&amp;busowner=${pro.busowner}&amp;price=${pro.price}&amp;state=${pro.state}&amp;city=${pro.city}&amp;category=${pro.category}&amp;desc=${pro.desc}&amp;imageUrl=${pro.imageUrl}&amp;location=${pro.location}&amp;features=${pro.features}">
                <img src="${pro.imageUrl}" alt="${pro.proname}">
            </a>
            </c:if>

            <div style="margin-top: 10px;width: 300px;" class="card-content">
                <p>Property name: ${pro.busname}</p>
                <p>Category: ${pro.category}</p>
                 <p>State: ${pro.state}</p>
                 <p>City: ${pro.city}</p>
                <p>Price: ${pro.price}</p> 
                 <p>Features: ${pro.features}</p>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>