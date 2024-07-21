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

<!-- String name = (String) request.getAttribute("name"); -->
<title>Error Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<!-- Your custom CSS file -->
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/springmvc/home">Utkarsh Kumar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/springmvc/home">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/about">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/register">Sign Up</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>
	<div class="container pt-6" style="max-width: 1350px">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<h3 class="display-4">Error</h3>
				<p class="lead">Something went wrong. Please try again later.</p>
				<div class="card mb-3">
					<div class="card-body">
						<div class="text-center mb-3">
							<img
								src="https://cdn-icons-png.flaticon.com/512/5986/5986327.png"
								alt="Error Icon" width="200" height="200">
						</div>
						<p>An unexpected error occurred. Please contact our support
							team for assistance.</p>
						<p>If the problem persists, try the following troubleshooting
							steps:</p>
						<ul>
							<li><strong>Reload the page</strong>: Sometimes, a simple
								reload can resolve the issue. Click the reload button in your
								browser or press F5.</li>
							<li><strong>Clear browser cache</strong>: Outdated cache can
								cause issues. Press Ctrl+Shift+R (Windows/Linux) or
								Command+Shift+R (Mac) to reload the page and clear the cache.</li>
							<li><strong>Restart your browser</strong>: Closing and
								reopening your browser can resolve the issue. Make sure to save
								any unsaved work before restarting.</li>
							<li><strong>Check your internet connection</strong>: Ensure
								your internet connection is stable and working properly.</li>
						</ul>
						<div class="buttonGroup">
							<a href="/springmvc/home" class="btn btn-primary"
								style="margin-right: 10px;">Go to Home</a> <a
								href="/springmvc/help" class="btn btn-secondary">Get Help</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p>&copy; 2023 Utkarsh Kumar. All rights reserved.</p>
		</div>
	</footer>
</body>
</html>