<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<nav class="navbar navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="addPerson">Add
						Person</a></li>
				<li class="nav-item"><a class="nav-link" href="viewPersons">View
						Persons</a></li>
			</ul>
		</div>
	</nav>
	<!-- Navbar Ended -->
	<div class="container">
		<h1 class="text-center">Persons Details</h1>
	</div>
	<!-- Data Table Start -->
	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Gender</th>
				<th scope="col">Aadhar Card Number</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="person" items="${persons}">
				<tr>
					<td>${ person.id }</td>
					<td>${ person.firstName }</td>
					<td>${ person.lastName }</td>
					<td>${ person.phoneNumber }</td>
					<td>${ person.gender }</td>
					<td>${ person.aadharCardNumber }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- Data Table End -->

	<!-- Bootstrap dependancies -->

	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="/webjars/popper.js/1.14.7/dist/umd/popper.min.js"></script>
	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>