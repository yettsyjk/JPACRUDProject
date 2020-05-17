<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Patient CRM | Patient</title>
</head>
<body>
	<%--Edit the file nav.jsp to change nav links --%>
	<%@ include file="navbar.jsp"%>



	<!-- List of Patients -->
	<c:choose>
		<c:when test="${! empty patients }">
			<table>

				<tr>
					<td>List of Patients</td>
				</tr>

				<c:forEach var="patient" items="${patients}">
					<tr>
						<td>ID: ${patient.id }</td>
						<td>Patient: <a
							class="list-group-item list-group-item-secondary"
							href="getPatient.do?pid=${patient.id}">${patient.lastName}, ${patient.firstName}</a></td>
						<td>Doctor: ${patient.docLastName }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		
		<c:when test="${! empty patient }">
			<div class="container">
				
				<div class="card" style="width: 50rem;">
					<div class="card-body">
						<h5 class="card-title font-weight-bold mb-2">ID:
							${patient.id}</h5>
						<p class="card-text">
							<i class="far fa-clock pr2"></i>FIXME DATE CREATED
						</p>

						<p class="card-text">Name: ${patient.lastName},
							${patient.firstName}</p>

						<p class="card-text">Email: ${patient.email}</p>
						<p class="card-text">Reason For Visit: ${patient.docSpecialty}</p>
						<p class="card-text">Doctor In Charge: ${patient.docLastName}</p>
					</div>
				</div>
			</div>
			
			<h3>Update Patient Details</h3>
			<div class="card" style="width: 50rem;">
				<div class="card-body">
					<form action="updatePatient.do" method="POST">
						<label for="pid"></label> <input type="hidden"
							value="${patient.id}" name="id" autocomplete="off" /> <label
							for="pid">Patient ID: </label> <input type="text"
							value="${patient.id}" name="id" disabled="disabled" />
							<br>
							
							<label for="firstName">First Name: </label>
							<input type="text" value="${patient.firstName}" name="firstName"/>
							<br>
							<label for="lastName">Last Name: </label>
							<input type="text" value="${patient.lastName}" name="lastName"/>
							<br>
							<label for="email">Email: </label>
							<input type="text" value="${patient.email}" name="email"/>
							<br>
							<label for="docLastName">Attending Physician: </label>
							<input type="text" value="${patient.docLastName}" name="docLastName"/>
							<br>
							<label for="docSpecialty">Specialty: </label>
							<input type="text" value="${patient.docSpecialty}" name="docSpecialty"/>
							<br>
							<input type="submit" value="Update Patient Details"/>
					</form>
					<form action="deletePatient.do" method="POST">
					<label for="id">
					</label>
					<input type="hidden" value="${patient.id}" name="id"/>
					<br>
					<input type="submit" value="Appointment Complete"/>				
					</form>
					
				</div>
			</div>
			


		</c:when>


		<c:otherwise>
			<h5>Patient Appointment Completed</h5>
		</c:otherwise>
	</c:choose>
	<br>
	
	<div class="card map-card">

		<!--Google map-->
		<div id="map-container-google-1" class="z-depth-1-half map-container"
			style="height: 50rem">
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
					<h6 class="font-small font-weight-light mt-n1">Stay 25 min</h6>
				</div>
			</div>

			<br /> <a href="index.do" class="btn btn-warning">Home</a>
</body>
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
</html>