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
				<li><a href="/dashboard">Home</a></li>
				<li><a href="/order/addOrder">Order(0)</a></li>
				<li><a href="/account">Account</a></li>
				<li><a href="/logout">Log out</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">

		<div class="register">
			<form:form action="/account/${user.id}" method="post"
				modelAttribute="user" class="form">

				<table>
					<thead>
						<h1>Your Account</h1>
					</thead>
					<thead>
						<tr>
							<td class="float-left">First Name:</td>
							<td class="float-left"><form:errors path="firstName"
									class="text-danger" /> <form:input class="input"
									path="firstName" /></td>
						</tr>
						<tr>
							<td class="float-left">Last Name:</td>
							<td class="float-left"><form:errors path="lastName"
									class="text-danger" /> <form:input class="input"
									path="lastName" /></td>
						</tr>
						<tr>
							<td class="float-left">Address:</td>
							<td class="float-left"><form:errors path="address"
									class="text-danger" /> <form:input class="input"
									path="address"  /></td>
						</tr>
						<tr>
							<td class="float-left">City:</td>
							<td class="float-left"><form:errors path="city"
									class="text-danger" /> <form:input class="input" path="city"
									 /></td>
						</tr>

						<tr>
							<td class="float-left"><form:label path="states">States</form:label></td>
							<td class="float-left"><form:select path="states">
									<form:option value="NONE" label="Select" />
									<form:options items="${getStatesList}" />
								</form:select></td>

						</tr>
						<tr>

							<td class="float-left"><form:errors path="email"
									class="text-danger" /> <form:input type="hidden" class="input"
									path="email" /></td>
						</tr>
						<tr>

							<td class="float-left"><form:errors path="password"
									class="text-danger" /> <form:input type="hidden" class="input"
									path="password"  /></td>
						</tr>
					

						<tr>
						<td colspan=2><input class="btn btn-primary" type="submit" value="Update Your Account" style="
    width: 225.6px;
"></td>
						</tr>
					</thead>
				</table>
			</form:form>
		</div>

		<div class="orders">
			<h1>Your Past Orders</h1>
			<c:forEach var="ord" items="${orders}">

				<li><c:out value="${ord.createdAt}"></c:out> <c:out
						value="${ord.size}"></c:out>, <c:out value="${ord.methode}"></c:out>,
					<c:out value="${ord.crust}"></c:out>, <c:out value="${ord.topping}"></c:out>
					<c:out value="${getTotal}"></c:out>
					<input type="checkbox" name="fav" value="Fav">Fav
					</li>

			</c:forEach>
		</div>
	</div>
</body>
</html>