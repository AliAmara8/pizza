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

<form:form action="/account/${user.id}" method="post" modelAttribute="user"  class="form">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">Edit</td>
	        </tr>
	    </thead>
	    <thead>
	    	<tr>
	            <td class="float-left">First Name:</td>
	            <td class="float-left">
	            	<form:errors path="firstName" class="text-danger"/>
					<form:input class="input" path="firstName" value="${user.firstName}"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Last Name:</td>
	            <td class="float-left">
	            	<form:errors path="lastName" class="text-danger"/>
					<form:input class="input" path="lastName" value="${user.lastName}"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Address:</td>
	            <td class="float-left">
	            	<form:errors path="address" class="text-danger"/>
					<form:input class="input" path="address" value="${user.address}"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">City:</td>
	            <td class="float-left">
	            	<form:errors path="city" class="text-danger"/>
					<form:input class="input" path="city" value="${user.city}"/>
	            </td>
	            
	      
                <td><form:label path = "states">States</form:label></td>
               <td>
                  <form:select path = "states">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${getStatesList}" />
                  </form:select>     	
               </td> 
             
	        </tr>
	        
	        <tr>
	        	<td colspan=2><input class="btn-primary" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>

<hr>
  
 

</body>
</html>