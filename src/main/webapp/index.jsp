<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<title>Population Counting Project</title>
<!-- Bootstrap CSS -->
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"></link>
</head>
<body>
	<!-- Navbar Started -->	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				<a class="nav-link" href="/">
				<spring:message code="nav.home"></spring:message>
				</a></li>
				<li class="nav-item">
				<a class="nav-link" href="addPerson">
					<spring:message code="nav.addPerson"></spring:message>
				</a>
				</li>
				<li class="nav-item">
				<a class="nav-link" href="viewPersons">
					<spring:message code="nav.viewPerson"></spring:message>
				</a>
				</li>
			</ul>
			
			<ul class="navbar-nav">
				<li class="nav-item active">
				<a class="nav-link" href="?language=en">
					<spring:message code="nav.english"></spring:message>
				</a>
				</li>
				<li class="nav-item">
				<a class="nav-link" href="?language=hi">
					<spring:message code="nav.hindi"></spring:message>
				</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- Navbar Ended -->	
	<div class="container-fluid">
		<div class="container">
			<br>
			<br>
			<br>
			<h2 class="text-center">
				<spring:message code="index.heading" />
			</h2>
		</div>
	</div>

	<!-- Bootstrap dependancies -->

	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="/webjars/popper.js/1.14.7/dist/umd/popper.min.js"></script>
	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>