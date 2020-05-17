<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Site | Patient Search</title>
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Caduceus.svg/170px-Caduceus.svg.png" sizes="32X32" type="image/png">
</head>
<body>
	<%--Edit the file nav.jsp to change nav links --%>
	<%@ include file="patient/navbar.jsp"%>
	<br>
	<h3 class="title">Arium Medical Center | Patient CRM</h3>
	<br>
	<div class="card" style="width: 25rem;">
		<div class="card-body">
			<form action="newPatient.do" method="GET">
			<label>Enter New Patient: </label> 
				<input type="submit" value="Add New Patient" autocomplete="off" />
			</form>
		</div>
	</div>
	<br>
	<div class="card" style="width: 25rem;">
		<div class="card-body">
			<form action="getPatient.do" method="GET">
				<label>Enter Patient ID:</label> <input class="form-control" type="text"
					name="pid" autocomplete="off" /> <input type="submit"
					value="Patient ID" autocomplete="off" />
			</form>
		</div>
	</div>


	<br>
	<div class="card" style="width: 25rem;">
		<div class="card-body">
			<form action="getPatientByLastName.do" method="GET">
				<label>Enter Last Name: </label> 
				<input class="form-control" type="text"
					name="lastName" autocomplete="off" /> <input type="submit"
					value="Patient Last Name" autocomplete="off" />
			</form>
		</div>
	</div>
	<br>
	

	<div class="card" style="width: 25rem;">
		<div class="card-body">
			<form action="listPatients.do" method="GET">
				<input type="submit" value="List of Current Patients" />
			</form>
		</div>
	</div>
	<br>
	<!-- Map for Patient Guidance to Office-->
	<!-- Card -->
	<div class="card map-card">

		<!--Google map-->
		<div id="map-container-google-1" class="z-depth-1-half map-container"
			style="height: 60rem">
			<iframe
				src="https://maps.google.com/maps?q=denver&t=&z=13&ie=UTF8&iwloc=&output=embed"
				frameborder="0" style="border: 0" allowfullscreen></iframe>
		</div>

		<!-- Card content -->
		<div class="card-body closed px-0">

			<div class="button px-2 mt-3">
				<a class="btn-floating btn-lg living-coral float-right"><i
					class="fas fa-bicycle"></i></a>
			</div>

			<div class="white px-4 pb-4 pt-3-5">

				<!-- Title -->
				<h5 class="card-title h5 living-coral-text">Denver, CO</h5>

				<div class="d-flex justify-content-between living-coral-text">
					<h6 class="card-subtitle font-weight-light">Guide Patient to
						Hospital</h6>
					<h6 class="font-small font-weight-light mt-n1">25 min</h6>
				</div>
				<br>
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