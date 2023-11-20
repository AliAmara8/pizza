<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ page import="com.ali.Project.services.OrderService"%>
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
				<li><a href="#">Home</a></li>
				<li><a href="#">Order(0)</a></li>
				<li><a href="#">Account</a></li>
				<li><button class="btn">Log Out</button></li>
			</ul>
		</div>
	</nav>

	
	<div class="container">

		<div class="card">
		
			<div class="card-body">
				<h1>Confirm Your Order</h1>
				<div class="user">
				
					<div class="user-block">
				
						<table>
							<tbody>
								<tr>
									<td class="float-left"><p class="text-primary">Method:</p></td> <td class="float-left"><c:out value="${order.methode}"></c:out></td>

								</tr>

								<tr>
									<td class="float-left"><p class="text-primary">size: </p></td><td class="float-left"> <c:out value="${order.size}"></c:out></td>
								</tr>
								<tr>
									<td class="float-left"><p class="text-primary">crust:</p></td><td class="float-left"> <c:out value="${order.crust}"></c:out></td>
								</tr>
								<tr>
									<td class="float-left"><p class="text-primary">quantity: </p></td><td class="float-left"><c:out value="${order.quantity}"></c:out></td>
								</tr>
								<tr>
									<td class="float-left"><p class="text-primary">toppings:</p> </td><td class="float-left"><c:out value="${order.topping}"></c:out></td>
								</tr>
								<tr><td class="float-left"><hr></td></tr>
								<tr>
				
									<td class="float-left">Price: <c:out value="${getPrice}"></c:out> <c:if
											test="${order.methode eq 'Delivery'}">
											<p>
												Delivery Fee:
												<c:out value="${getDeliveryFee}" />
											</p>
										</c:if>
										<hr> Total Price: <c:out value="${getTotal}"></c:out>
									</td>
								</tr>
								<tr>
									<td class="float-left"><div class="user">
											<a href="/order/addOrder" class="btn btn-primary">New
												Order</a>
										</div></td>
										<td class="float-left"><div class="user">
											<a href="/order/addOrder" class="btn btn-primary">Confirm</a>
										</div></td>
								</tr>


							</tbody>
						</table>

					</div>

				</div>


			</div>
		</div>


	</div>
</body>
</html>