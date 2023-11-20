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

			<form:form class="form-control" action="/order/addOrder"
				method="post" modelAttribute="newOrder">

				<table>
					<thead>
						<tr>
							<td colspan="2"><h1>Add An Order</h1></td>
						</tr>
					</thead>
					<thead>

						<tr>
							<td class="float-left"><form:label path="methode">Method</form:label></td>
							<td class="float-left"><form:select path="methode">
									<form:option value="${randomMethod}" label="${randomMethod}" />
									<form:options items="${getMethodList}" />
								</form:select></td>
						</tr>

						<tr>
							<td class="float-left"><form:label path="size">Size</form:label></td>
							<td class="float-left"><form:select path="size">
									<form:option value="${randomSize}" label="${randomSize}" />
									<form:options items="${getSizeList}" />
								</form:select></td>
						</tr>
						<tr>
							<td class="float-left"><form:label path="crust">Crust</form:label></td>
							<td class="float-left"><form:select path="crust">
									<form:option value="${randomCrust}" label="${randomCrust}" />
									<form:options items="${getCrustList}" />
								</form:select></td>
						</tr>
						<tr>
							<td class="float-left"><form:label path="quantity">Quantity</form:label></td>
							<td class="float-left"><form:select path="quantity">
									<form:option value="NONE" label="Select" />
									<form:options items="${getQuantityList}" />
								</form:select></td>
						</tr>
						
						<tr>
								<td class="float-left"><form:label path="topping">Toppings</form:label></td>
								<td ><form:checkboxes items="${getToppingList}" path="topping" var="topp"
            checked="${topp eq randomTopping}" /></td>
						</tr>
						
						<div class="form-row">
							<form:errors path="userord" class="error" />
							<form:input type="hidden" path="userord" value="${user.id}"
								class="form-control" />
						</div>

						<tr>
							<td colspan=2><input class="btnform" type="submit"
								value="Create An Order" /></td>
						</tr>
					</thead>
				</table>
			</form:form>
			<div>
				<img src="/images/pizza000.jpg" alt="pizza" class="rounded">
			</div>
		</div>
	</div>
</body>
</html>