<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Project Manager</title>
</head>
<body>

	<nav class="nav">
		<div class="nav-menu">
			<h1 class="brand">PIZZA PETE'S</h1>
<ul class="links">
				<li><a href="/">Have You An Account? Register</a> </li>
				
			</ul>
			
		</div>
	</nav>
	<div class="container">
		<div class="register">
			

			<form:form class="form-control" action="/login" method="post"
				modelAttribute="newLogin">

				<table>
				<thead>
	    	<tr>
	            <td colspan="2"><h1>Login</h1></td>
	        </tr>
	    </thead>
					<thead>
						<tr>
							<td colspan="2">Log In</td>
						</tr>
					</thead>
					<thead>
						<tr>
							<td class="float-left">Email:</td>
							<td class="float-left"><form:errors path="email"
									class="text-danger" /> <form:input class="input" path="email" />
							</td>
						</tr>
						<tr>
							<td class="float-left">Password:</td>
							<td class="float-left"><form:errors path="password"
									class="text-danger" /> <form:input class="input"
									path="password" /></td>
						</tr>
						<tr>
	        	<td colspan=2><input class="btnform" type="submit" value="Login"/></td>
	        </tr>
					</thead>
				</table>
			</form:form>
			<div><img src="/images/pizza000.jpg" alt="pizza" class="rounded"></div>
		</div>
	</div>
</body>
</html>