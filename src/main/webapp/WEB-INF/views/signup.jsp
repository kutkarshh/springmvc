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
<link rel="stylesheet"
	href="<c:url value="resources/styles/style.css"/>">
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
					href="/springmvc/contact">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/springmvc/help">Help</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="intro">
			<h1 class="display-3">Registration</h1>
			<p class="lead">Please fill out the form below to register:</p>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-8 form-container">
				<form:form modelAttribute="user" action="/springmvc/signup"
					method="post" id="signupForm">
					<div class="form-group">
						<form:label for="name" path="name">Name</form:label>
						<form:input type="text" class="form-control" path="name"
							required="required" />
					</div>
					<div class="form-group">
						<form:label for="email" path="email">Email address</form:label>
						<form:input type="email" class="form-control" path="email"
							pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
							required="required" />

					</div>
					<div class="form-group">
						<form:label for="dob" path="dob">Date of Birth</form:label>
						<form:input type="date" class="form-control" path="dob" name="dob"
							required="required" />

					</div>
					<div class="form-group">
						<form:label for="phone" path="phone">Phone Number</form:label>
						<form:input type="text" class="form-control" path="phone"
							required="required" />

					</div>
					<div class="form-group">
						<form:label for="subscription" path="subscription">User Plan</form:label>
						<form:select class="form-control" path="subscription"
							required="required">
							<option value="basic">Basic</option>
							<option value="standard">Standard</option>
							<option value="premium">Premium</option>
						</form:select>

					</div>



					<div class="form-group">
						<form:label for="gender" path="gender">Gender</form:label>
						<div class="form-check">
							<form:radiobutton class="form-check-input" path="gender"
								value="male" required="required" />
							<form:label class="form-check-label" path="gender" for="male">Male</form:label>
						</div>
						<div class="form-check">
							<form:radiobutton class="form-check-input" path="gender"
								value="female" required="required" />
							<form:label class="form-check-label" path="gender" for="female">Female</form:label>
						</div>

					</div>

					<div class="form-group">
						<form:label path="services" for="services">Services you want</form:label>
						<form:select multiple="true" class="multi-select" path="services"
							size="7" required="required">
							<optgroup label="Cloud Services">
								<option value="Services API">Services API</option>
								<option value="Cloud Services">Cloud Services</option>
							</optgroup>
							<optgroup label="Project Management">
								<option value="Agile Project Management">Agile Project
									Management</option>
								<option value="Scrum Master">Scrum Master</option>
								<option value="Jira Project Management">Jira Project
									Management</option>
							</optgroup>
							<optgroup label="Task Management">
								<option value="Asana Task Management">Asana Task
									Management</option>
								<option value="Trello Board Management">Trello Board
									Management</option>
							</optgroup>
						</form:select>

					</div>
					<div class="card mb-1">
						<h5 class="card-title p-2">Address</h5>
						<div class="card-body">
							<div class="form-group row">
								<label for="street" class="col-sm-2 col-form-label">Street</label>
								<div class="col-sm-10">
									<form:input type="text" path="address.street"
										name="address.street" class="form-control" required="required" />

								</div>
							</div>
							<div class="form-group row">
								<label for="city" class="col-sm-2 col-form-label">City</label>
								<div class="col-sm-10">
									<form:input type="text" path="address.city" name="address.city"
										class="form-control" required="required" />
									<form:errors path="address.city" />
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<form:input type="password" class="form-control" path="password"
							name="password" pattern=".{8,20}" required="required" />
						<small id="passwordHelpInline" class="text-muted"> Must be
							8-20 characters long. </small>
					</div>
					<div class="form-group">
						<label for="confirm_password">Confirm Password</label>
						<form:input type="password" class="form-control"
							path="confirm_password" pattern=".{8,20}" required="required" />

						<small id="passwordHelpInline" class="text-muted"> Must be
							same as password.</small>

					</div>

					<button type="submit" class="btn btn-primary mb-3">Register</button>

					<c:if test="${showError}">
						<div class="alert alert-danger" role="alert">
							<h5>Please correct the following errors:</h5>
							<c:if test="${globalError.length()>0}">
								<h6>${globalError}</h6>
							</c:if>
							<ol>
								<c:forEach items="${allErrors}" var="error" varStatus="loop">
									<li>${error.defaultMessage}</li>
								</c:forEach>
							</ol>
						</div>
					</c:if>

				</form:form>

			</div>
		</div>
	</div>
	<%-- 	<input type="hidden" id="userCreated" value="${userCreated}"> --%>
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
