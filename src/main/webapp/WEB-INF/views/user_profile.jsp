<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration - ${name}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Your custom CSS file -->
<link rel="stylesheet" href="../resources/styles/style.css">
<c:if test="${userCreated}">
	<script>
		alert("User Created successfully!");
	</script>
</c:if>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/springmvc/home">${name}</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/springmvc/home">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/about">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/register">Sign Up</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/user-profile">User Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<h1 class="display-3">User Profile</h1>
				<p class="lead">Here are your details:</p>
				<div class="card mb-3">
					<h5 class="card-header">Personal Details</h5>
					<div class="card-body">
						<p>
							<strong>Name:</strong> ${user.name}
						</p>
						<p>
							<strong>Email:</strong> ${user.email}
						</p>
						<p>
							<strong>Date of Birth:</strong> ${user.dob}
						</p>
						<p>
							<strong>Phone Number:</strong> ${user.phone}
						</p>
					</div>
				</div>
				<div class="card mb-3">
					<h5 class="card-header">Address</h5>
					<div class="card-body">
						<p>
							<strong>Street:</strong> ${user.address.street}
						</p>
						<p>
							<strong>City:</strong> ${user.address.city}
						</p>
					</div>
				</div>
				<div class="card mb-3">
					<h5 class="card-header">Subscription</h5>
					<div class="card-body">
						<p>
							<strong>Subscription Plan:</strong> ${user.subscription}
						</p>
					</div>
				</div>
				<div class="card mb-3">
					<h5 class="card-header">Services</h5>
					<div class="card-body">
						<ul>
							<c:forEach items="${user.services}" var="service">
								<li>${service}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="container">
			<p>&copy; 2023 ${name}. All rights reserved.</p>
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
