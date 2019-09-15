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
		<h1 class="text-center">Add New Person</h1>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm"></div>
			<div class="col-sm">
				<form:form method="post" action="savePersonDetails" modelAttribute="person">
					<div class="form-group">
						<label for="InputFirstName">First Name</label>
						<form:input path="firstName" type="text" class="form-control"
							placeholder="Enter First Name" />
					</div>
					<div class="form-group">
						<label for="forInputLastName">Last Name</label>
						<form:input path="lastName" type="text" class="form-control"
							placeholder="Enter last Name" />
					</div>
					<div class="form-group">
						<label for="forInputPhoneNumber">Enter Phone Number</label>
						<form:input path="phoneNumber" type="text" class="form-control"
							placeholder="Enter Phone Number" />
					</div>

					<div class="form-group">
						<label for="forInputGender">Gender</label>
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="gender"
								value="Male" />
							<label class="form-check-label" for="inlineRadio1">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="gender"
								value="Female" />
							<label class="form-check-label" for="inlineRadio2">Female</label>
						</div>
					</div>

					<div class="form-group">
						<label for="forInputAadharCardNumber">Enter Aadhar Card
							Number</label>
						<form:input path="aadharCardNumber" type="text"
							class="form-control" placeholder="Enter Aadhar Card Number" />
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form>

			</div>
			<div class="col-sm"></div>
		</div>
	</div>



	<!-- Bootstrap dependancies -->
	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="/webjars/popper.js/1.14.7/dist/umd/popper.min.js"></script>
	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>