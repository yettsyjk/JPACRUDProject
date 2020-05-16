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
<%@ include file="navbar.jsp" %>
	
	<h2 class="title">Patient Details</h2>



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
							href="getPatient.do?pid=${patient.id}">${patient.lastName},${patient.firstName}</a></td>
						<td>Doctor: ${patient.docLastName }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
	
		<c:when test="${! empty patient }">
			<div class="container">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">ID: ${patient.id}</h5>

						<p class="card-text">Name: ${patient.lastName},
							${patient.firstName}</p>

						<p class="card-text">Email: ${patient.email}</p>
						<p class="card-text">Reason For Visit:
							${patient.docSpecialty}</p>
						<p class="card-text">Doctor In Charge: ${patient.docLastName}</p>

					</div>
				</div>
			</div>
		</c:when>


		<c:otherwise>
			<h5>Invalid Patient Request</h5>
		</c:otherwise>
	</c:choose>



	<br />
	<a href="index.do" class="btn btn-warning">Home</a>
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