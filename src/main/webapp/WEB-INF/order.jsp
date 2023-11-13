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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Project Manager</h1>
<p>A place for teams to manage projects.</p>

<form:form action="/order/addOrder" method="post" modelAttribute="newOrder">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">AddOrder</td>
	        </tr>
	    </thead>
	    <thead>
	    	
	        <tr>
               <td><form:label path = "methode">Method</form:label></td>
               <td>
                  <form:select path = "methode">
                  <form:errors path="methode" class="text-danger"/>
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${getMethodList}" />
                  </form:select>     	
               </td>
	        </tr>
	        
	        <tr>
               <td><form:label path = "size">Size</form:label></td>
               <td>
                  <form:select path = "size">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${getSizeList}" />
                  </form:select>     	
               </td>
               
               <td><form:label path = "crust">Crust</form:label></td>
               <td>
                  <form:select path = "crust">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${getCrustList}" />
                  </form:select>     	
               </td>
               
               <td><form:label path = "quantity">Quantity</form:label></td>
               <td>
                  <form:select path = "quantity">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${getQuantityList}" />
                  </form:select>     	
               </td>
	        </tr>
	        <tr>
               <td><form:label path = "topping">Toppings</form:label></td>
               <td><form:checkboxes items = "${getToppingList}" path = "topping" /></td>       
            </tr>
            <div class="form-row">
				<form:errors path="userord" class="error"/>
				<form:input type="hidden" path="userord" value="${user.id}" class="form-control"/>
			</div>
	       
	        <tr>
	        	<td colspan=2><input class="input" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
<hr>

</body>
</html>