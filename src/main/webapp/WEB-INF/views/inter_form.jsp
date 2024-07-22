<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Your custom CSS file -->
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">
<meta charset="UTF-8">
<title>Interceptor Form</title>
<script>
	console.log('${name}')
</script>
</head>
<body>
	<div class="container features">
		<div class="intro">
			<h1 class="display-3">Interceptor Form</h1>
			<p class="lead">Please fill out the form below:</p>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-8 form-container">
				<c:if test="${empty name and empty error}">
					<form action="interForm" class="pb-2" method="post">
						<div class="form-group">
							<label for="name">Title</label> <input type="text"
								class="form-control" name="name" id="name"
								placeholder="Enter Your Name">
						</div>
						<button type="submit" class="btn btn-primary">Go!!</button>
					</form>
				</c:if>

				<c:if test="${not empty name and empty error}">
					<div class="p-3 mb-2 bg-success text-white">Welcome!! ${name}</div>
				</c:if>
				<c:if test="${not empty error}">
					<div class="p-3 mb-2 bg-danger text-white">${error}</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
F
