<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us - ${name}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">

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
				<li class="nav-item"><a class="nav-link" href="#">Projects</a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="/springmvc/contact">Contact Us<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="intro">
			<h1 class="display-3">Contact Us</h1>
			<p class="lead">Have a question or want to get in touch? Fill out
				the form below:</p>
		</div>

		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="" method="post">
					<div class="form-group">
						<label for="name">Your Name</label> <input type="text"
							class="form-control" id="user_name" name="user_name"
							value="${feedback.user_name}" disabled="disabled" required>
					</div>
					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							class="form-control" id="user_email" disabled="disabled"
							value="${feedback.user_email}" name="user_name" required>
					</div>
					<div class="form-group">
						<label for="message">Message</label>
						<textarea class="form-control" id="user_message"
							name="user_message" rows="5" disabled="disabled" required>${feedback.user_message}</textarea>
					</div>
					<div class="container">
						<div class="text-center">
							<c:if test="${status}">
								<div class="p-3 mb-2 bg-success text-white">Submitted Your
									Feedback with ID ${_id}. Thank you!!</div>
							</c:if>
							<c:if test="${!status}">
								<div class="p-3 mb-2 bg-success text-white">Some error
									Occurred</div>
							</c:if>
							<a class="btn btn-info" href="/springmvc/home" role="button">Go
								to Homepage</a>
						</div>
					</div>

				</form>
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
