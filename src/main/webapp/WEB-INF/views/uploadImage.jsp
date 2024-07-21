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
<%
String name = (String) request.getAttribute("name");
%>
<title>Gallery - <%=name%></title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- Your custom CSS file -->
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">
<c:if test="${imageUploaded}">
	<script src="<c:url value="resources/js/uploadScript.js"/>"></script>
</c:if>
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
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/about">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/register">Sign Up</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/springmvc/gallery">Gallery</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="features gallery mt-4">
			<h2 class="display-5">Gallery</h2>
			<c:choose>
				<c:when test="${not empty images}">
					<div class="row">
						<c:forEach items="${images}" var="image">
							<div class="col-md-4 p-2">
								<img
									src="data:image/jpeg;base64,${image.getImageBytesAsBase64()}"
									alt="${image.description}" class="img-fluid">
							</div>
						</c:forEach>
					</div>
				</c:when>
				<c:otherwise>
					<div class="justify-content-center row">
						<div class="col-md-4 p-2">
							<img width="100%"
								src="<c:url value="resources/images/no_photo.jpg"/>" />
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="features upload-form mt-2">
			<h2 class="display-5">Upload Image</h2>
			<form action="/springmvc/upload" method="post"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="url">Select Image:</label> <input type="file"
						name="url" id="url" required>
				</div>
				<div class="form-group">
					<label for="description">Description:</label> <input type="text"
						name="description" id="description" required>
				</div>
				<button type="submit" class="btn btn-primary">Upload</button>
			</form>
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