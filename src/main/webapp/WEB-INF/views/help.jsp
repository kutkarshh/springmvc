<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Help - ${name}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Your custom CSS file -->
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/springmvc/home"> <%-- <%=request.getAttribute("name")%> --%>
			${name}
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/springmvc/home">Home</a></li>
				<li class="nav-item "><a class="nav-link"
					href="/springmvc/about">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Projects</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="intro">
			<h1 class="display-3">Help</h1>
			<p class="lead">Get started with our website and find answers to
				frequently asked questions.</p>
		</div>
		<div class="features2 overview">
			<h2 class="display-5 header_overview">Overview</h2>
			<p>Welcome to our help page! This page is designed to assist you
				in navigating and using our website effectively. Below, you'll find
				information on how to use our website, troubleshoot common issues,
				and get the most out of our features.</p>
		</div>
		<div class="features2">
			<h2 class="display-5">Navigation</h2>
			<div class="card-deck">
				<div class="card p-2">
					<i class="fas fa-bars fa-3x"></i>
					<h3 class="card-title">Header</h3>
					<p class="card-text">The header section at the top of the page
						contains our logo, navigation menu, and search bar.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-search fa-3x"></i>
					<h3 class="card-title">Search Bar</h3>
					<p class="card-text">The search bar is located in the header
						section and allows you to search for specific content on our
						website.</p>
				</div>
			</div>

			<h2 class="display-5">About Page</h2>
			<div class="card-deck">
				<div class="card p-2">
					<i class="fas fa-info fa-3x"></i>
					<h3 class="card-title">Introduction</h3>
					<p class="card-text">The About page provides an overview of our
						company, including our mission, values, and team.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-book fa-3x"></i>
					<h3 class="card-title">Our Story</h3>
					<p class="card-text">The Our Story section provides more
						information about our company's history, goals, and values.</p>
				</div>
			</div>

			<h2 class="display-5">Components</h2>
			<div class="card-deck">
				<div class="card p-2">
					<i class="fas fa-cards fa-3x"></i>
					<h3 class="card-title">Cards</h3>
					<p class="card-text">We use cards to display information in a
						concise and visually appealing way. Cards typically contain an
						icon, title, and brief description.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-button fa-3x"></i>
					<h3 class="card-title">Buttons</h3>
					<p class="card-text">We use buttons to provide calls-to-action,
						such as "Learn More" or "Contact Us".</p>
				</div>
			</div>
		</div>
		<div class="features2">
			<h2 class="display-5">Troubleshooting</h2>
			<div class="card-deck">
				<div class="card p-2">
					<i class="fas fa-question fa-3x"></i>
					<h3 class="card-title">Common Issues</h3>
					<p class="card-text">If you're experiencing issues with our
						website, please check our common issues page for solutions to
						frequently encountered problems.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-envelope fa-3x"></i>
					<h3 class="card-title">Contact Us</h3>
					<p class="card-text">If you're unable to find a solution to
						your issue, please contact us using our contact form or email
						address.</p>
				</div>
			</div>
			<h2 class="display-5">FAQs</h2>
			<div class="card-deck">
				<div class="card p-2">
					<i class="fas fa-question fa-3x"></i>
					<h3 class="card-title">Q: How do I search for content on your
						website?</h3>
					<p class="card-text">A: You can search for content using the
						search bar located in the header section.</p>
				</div>
				<div class="card p-2">
					<i class="fas fa-envelope fa-3x"></i>
					<h3 class="card-title">Q: How do I contact your team?</h3>
					<p class="card-text">A: You can contact us using our contact
						form or email address, which can be found on our Contact page.</p>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p>
				&copy; 2023
				<%-- 				<%=request.getAttribute("name")%> --%>
				${name} . All rights reserved.
			</p>
		</div>
	</footer>
</body>
</html>