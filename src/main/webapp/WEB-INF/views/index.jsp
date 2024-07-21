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
<title>Home - ${name}</title>
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
		<a class="navbar-brand" href="/springmvc/home">${name}</a>
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
	<div class="container">
		<div class="intro">
			<h1 class="display-3">Hello, I'm ${name}</h1>
			<p class="lead">A passionate Java Full Stack Developer with a
				strong expertise in designing, developing, and deploying scalable
				and efficient applications.</p>
			<p>I have 5+ years of experience in the industry, with a proven
				track record of delivering high-quality projects on time. My
				expertise includes Java, Spring Boot, Hibernate, React, Angular,
				JavaScript, HTML/CSS, and MySQL.</p>
			<a href="/springmvc/about" class="btn btn-primary btn-lg">Learn
				More</a>
		</div>
		<div class="features">
			<h2 class="display-5">My Expertise</h2>
			<div class="row justify-content-center">
				<div class="col-md-3 card skill-card p-3 m-2">
					<i class="fab fa-java fa-3x"></i>
					<h3>Java</h3>
					<p>Strong understanding of Java fundamentals, including OOP
						concepts, data structures, and algorithms.</p>
				</div>
				<div class="col-md-3 card skill-card p-3 m-2">
					<i class="fab fa-react fa-3x"></i>
					<h3>Frontend Development</h3>
					<p>Proficient in building responsive and interactive UI
						components using React, Angular, and HTML/CSS.</p>
				</div>
				<div class="col-md-3 card skill-card p-3 m-2">
					<i class="fas fa-database fa-3x"></i>
					<h3>Backend Development</h3>
					<p>Experienced in designing and developing scalable backend
						systems using Spring Boot, Hibernate, and MySQL.</p>
				</div>
			</div>
		</div>


		<div class="features skills-section">
			<h2 class="display-5">My Skills</h2>
			<p>We're proficient in a wide range of technologies and tools,
				and are always looking to expand our skillset.</p>
			<div class="row">
				<%-- <%
				Map<String, String> skills = (Map<String, String>) request.getAttribute("skills");
				for (Map.Entry<String, String> skill : skills.entrySet()) {
				%> --%>
				<c:forEach items="${skills}" var="skill">
					<div class="col-md-3">
						<div class="card skill-card m-2">

							<div class="card-body">
								<i class="fab fa-html5 fa-3x"></i>
								<%-- <h3><%=skill.getKey()%></h3> --%>
								<%-- <p><%=skill.getValue()%></p> --%>
								<h3>${skill.key}</h3>
								<p>${skill.value}</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<%-- 	<%
				}
				%> --%>
			</div>
		</div>
		<div class="searchComp">
			<div class="section-header">
				<h2>Use our Own Search Engine</h2>
				<p>Find what you need in an instant</p>
			</div>
			<div class="justify-content-center">
				<form action="search ">
					<div class="form-group search-container mt-3">
						<input type="text" name="searchBox" placeholder="Search your Text"
							id="search-input">
						<button onclick="searchNotes()">
							<i class="fas fa-rocket mx-1"></i><span>Search</span>
						</button>
					</div>
				</form>
				<div class="section-content">
					<p>Our powerful search bar allows you to quickly search
						anything on the internet using different browsers such as Google,
						Bing, Yahoo, DuckDuckGo, StartPage, and more. Whether you're
						looking for information on a specific topic, a product review, or
						a tutorial, our search bar makes it easy to find what you need in
						an instant.</p>
					<ul>
						<li>Search on Google, Bing, Yahoo, and other popular search
							engines</li>
						<li>Get instant results from multiple sources</li>
						<li>Find what you need quickly and easily</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p>&copy; 2023 ${name}. All rights reserved.</p>
		</div>
	</footer>
</body>
</html>