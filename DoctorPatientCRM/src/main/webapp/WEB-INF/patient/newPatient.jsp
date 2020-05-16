<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient CRM | New Patient</title>
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="card">
		<h5 class="card-header info-color white-text text-center py-4"><strong>Add New Patient</strong></h5>
			<!-- Form -->
			<form class="text-center" style="color: #757575;" action="newPatient.do" method="POST">
			<div class="md-form mt-3">
			<label for="firstName">First Name:</label>
			<input class="form-control" type="text" name="firstName" />
			</div>
			<br/>
			<div class="md-form mt-3">
			<label for="lastName">Last Name:</label>
			<input class="form-control" type="text" name="lastName" />
			</div>
			<br/>
			<div class="md-form mt-3">
			<label for="email">Email:</label>
			<input class="form-control" type="text" name="email" />
			</div>
			<br/>
			<div class="md-form mt-3">
			<label for="docLastName">Attending Physician:</label>
			<input class="form-control" type="text" name="docLastName" />
			</div>
			<br/>
			<div class="md-form mt-3">
			<label for="docSpecialty">Physician Specialty:</label>
			<input class="form-control" type="text" name="docSpecialty" />
			</div>
			<br/>
			</form>	
		</div>
		<a href="index.do">Home</a>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>