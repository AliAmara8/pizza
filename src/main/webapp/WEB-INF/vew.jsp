<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Project Manager</title>
</head>
<body>
<h1>Project Manager</h1>
<p>A place for teams to manage projects.</p>


  
  <h1>Past Order</h1>
  

  
<c:forEach var="ord" items="${orders}">
<c:out value="${ord.userord.lastName}"></c:out>
          <c:out value="${ord.createdAt}"></c:out>
		
			<p><li><c:out value="${ord.size}"></c:out>,<c:out value="${ord.methode}"></c:out>,<c:out value="${ord.crust}"></c:out>,<c:out value="${ord.topping}"></c:out></p>
	
		</c:forEach>

</body>
</html>