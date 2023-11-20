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

<h1>Quik Options</h1>
	<div class="container">
		
			
			<div class="all-cards">
			<div class="card">
				<div class="card-body">
					<div class="user">
						<div class="user-block">
							<p>take yor choice pizza.</p>

						</div>

					</div>
					<div class="user">
						<a href="/order/addOrder" class="btn btn-primary">New Order</a>
					</div>

				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<div class="user">
						<div class="user-block">
							<p>take yor favorite pizza.</p>

						</div>

					</div>
					<div class="user">
						<a href="/order/addOrder" class="btn btn-primary">Re-Order</a>
					</div>

				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<div class="user">
						<div class="user-block">
							<p>take a random pizza.</p>

						</div>

					</div>
					<div class="user">
						<a href="/order/random" class="btn btn-primary">Surprise Me</a>
					</div>

				</div>
			</div>
		</div>

	</div>
	

</body>
</html>