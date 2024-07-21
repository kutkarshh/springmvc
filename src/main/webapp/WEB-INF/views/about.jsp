<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%
String name = (String) request.getAttribute("name");
%>
<title>About Us - <%=name%></title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- Your custom CSS file -->
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">
<script src="<c:url value="resources/js/carouselscript.js"/>"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/springmvc/home"><%=name%></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/springmvc/home">Home</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/springmvc/gallery">Gallery</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/register">Sign Up</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="intro">
			<h1 class="display-3">About Us</h1>
			<p class="lead">Where passion meets innovation</p>
			<p>We're a team of creative and dedicated individuals who share a
				common goal of delivering exceptional solutions that exceed our
				client's expectations.</p>
			<!-- 			<a href="/springmvc/help" class="btn btn-primary btn-lg">Learn -->
			<!-- 				More</a> -->
		</div>
		<div class="features">
			<h2 class="display-5">Our Story</h2>
			<div class="card-deck">
				<div class="card p-3">
					<i class="fas fa-lightbulb fa-3x"></i>
					<h3 class="card-title">Inspiration</h3>
					<p class="card-text">We believe that inspiration is the spark
						that drives innovation. Our team is constantly seeking new ways to
						improve and push the boundaries of what's possible.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-users fa-3x"></i>
					<h3 class="card-title">Teamwork</h3>
					<p class="card-text">We're a team of individuals with diverse
						skills and experiences, united by a common goal of delivering
						exceptional results.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-rocket fa-3x"></i>
					<h3 class="card-title">Innovation</h3>
					<p class="card-text">We're passionate about staying ahead of
						the curve and embracing new technologies to deliver innovative
						solutions that make a difference.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel section -->
	<div class="carousel-section m-5">
		<div id="carouselServices" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#carouselServices" data-slide-to="0" class="active"></li>
				<li data-target="#carouselServices" data-slide-to="1"></li>
				<li data-target="#carouselServices" data-slide-to="2"></li>
				<li data-target="#carouselServices" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="row">
						<div class="col-md-4">
							<img
								src="https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010125.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721433600&semt=ais_user"
								alt="Coding" class="img-fluid">
						</div>
						<div class="col-md-4">
							<img
								src="https://freerangestock.com/sample/119557/web-developer--web-development--programmer--programming.jpg"
								alt="Web Design" class="img-fluid active-image">
						</div>
						<div class="col-md-4">
							<img src="https://via.placeholder.com/1600x900"
								alt="Software Development" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row">
						<div class="col-md-4">
							<img src="https://via.placeholder.com/1600x900"
								alt="Digital Marketing" class="img-fluid">
						</div>
						<div class="col-md-4">
							<img src="https://via.placeholder.com/1600x900" alt="SEO"
								class="img-fluid active-image">
						</div>
						<div class="col-md-4">
							<img src="https://via.placeholder.com/1600x900"
								alt="Social Media" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row">
						<div class="col-md-4">
							<img
								src="https://st4.depositphotos.com/12981370/24312/i/450/depositphotos_243120806-stock-photo-programmer-working-software-development-coding.jpg"
								alt="Cyber Security" class="img-fluid">
						</div>
						<div class="col-md-4">
							<img src="https://via.placeholder.com/1600x900"
								alt="Network Security" class="img-fluid active-image">
						</div>
						<div class="col-md-4">
							<img
								src="https://plus.unsplash.com/premium_photo-1685086785054-d047cdc0e525?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2ViJTIwZGV2ZWxvcG1lbnR8ZW58MHx8MHx8fDA%3D"
								alt="Data Protection" class="img-fluid">
						</div>
					</div>
				</div>
				<!-- Add more carousel items here -->
			</div>
			<a class="carousel-control-prev" href="#carouselServices"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselServices"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p>
				&copy; 2023
				<%=name%>. All rights reserved.
			</p>
		</div>
	</footer>
</body>
</html>