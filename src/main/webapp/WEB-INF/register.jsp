<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="images/fevicon.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>PIZZA PETE'S</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
     
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
              <span>
                PIZZA PETE'S
              </span>
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item ">
                  <a class="nav-link active" href="login.html">Alraedy have an accont? <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="register.html"> Login</a>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- why us section -->

  <section class="why_us_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
         Register
        </h2> 
<table>
<tr>
  <from:form class="search_form" action="/register" method="post" modelAttribute="newUser">
    <table>
      <tr>
        <td><form:errors path="firstName" class="text-danger"/>
          <input type="text" class="form-control" placeholder="FirstName" path="firstName"></td>
        <td><input type="text" class="form-control" placeholder="LastName" path="lastName"></td>
      </tr>
      <tr>
        <td><form:errors path="lastName" class="text-danger"/>
          <input type="email" class="form-control" placeholder="Email" path="email"></td>
      </tr>
        <tr>
          <td><input type="text" class="form-control" placeholder="Address" path="address"></td>
        </tr>
        <tr>
          <td><input type="text" class="form-control" placeholder="City" path="city"></td>
          
          <td><select id="cars" class="form-control" name="state" form="state" placeholder="state">
            <option value="None">Select</option>
            <option value="saab">Saab</option>
            
          </select></td>
        </tr>
        <tr>
          <td><input type="password" class="form-control" placeholder="password"></td>
        </tr>
        <tr>
          <td><input type="password" class="form-control" placeholder="confirm password"></td>
        </tr>
    </table>
    
    
  </from:form>

</tr>
<tr><br> <div><button class="search_form" type="submit">Sing Up</button></div></tr>

</table>
        
      </div>
     
  </section>

  <!-- end why us section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_contact">
            <h5>
              <a href="" class="navbar-brand">
                <span>
                  Minics
                </span>
              </a>
            </h5>
            <p>
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              Address
            </p>
            <p>
              <i class="fa fa-phone" aria-hidden="true"></i>
              +216 123456
            </p>
            <p>
              <i class="fa fa-envelope" aria-hidden="true"></i>
              pizza@gmail.com
            </p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_info">
            <h5>
              Information
            </h5>
            <p>
              Pizza, Delivery, All Sizes, All Toppings.
            </p>
          </div>
        </div>
        <div class="col-md-3">
          
      </div>
    </div>
  </section>

  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By CodoDojo
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>


</body>

</html>