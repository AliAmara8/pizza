<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<%@ page import="com.ali.Project.services.OrderService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Project Manager</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Project Manager</h1>
<p>A place for teams to manage projects.</p>

<h1>Your Order</h1>
<table>
    <tbody>
    	<tr>
            <td>Method: <c:out value="${order.methode}"></c:out></td>
        
        </tr>
        
        <tr>
            <td>size: <c:out value="${order.size}"> </c:out></td>
        </tr>
        <tr>
            <td>crust: <c:out value="${order.crust}"></c:out></td>
        </tr>
        <tr>
            <td>quantity: <c:out value="${order.quantity}"></c:out></td>
        </tr>
        <tr>
            <td>toppings: <c:out value="${order.topping}"></c:out></td>
        </tr>
    
      
    </tbody>
</table>
 Price: <c:out value="${getPrice}"></c:out>
<c:if test="${order.methode eq 'Delivery'}">
    <p>Delivery Fee: <c:out value="${getDeliveryFee}"/></p>
</c:if>
<hr>
Total Price: <c:out value="${getTotal}"></c:out>
</body>
</html>