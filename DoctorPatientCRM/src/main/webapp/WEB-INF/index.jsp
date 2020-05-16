<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Site | Patient Search</title>
<link rel="stylesheet"
	href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<h3 class="card-title">Welcome to Doctor Patient CRM</h3>
	<div class="card">
		<div class="card-body">
			<form action="getPatient.do" method="GET">
				<label class="col-sm-2 col-form-label">Patient ID:</label> <input
					class="form-control" type="text" name="pid" /> <input
					type="submit" value="Show Patient" />
			</form>
		</div>
	</div>
	</div>
	<br/>
	
	<table>
	<c:forEach var="patient" items="${patient}">
		<tr>
		<td>${patient.id }</td>
		<td><a class="list-group-item list-group-item-secondary" href="getPatient.do?fid=${patient.id}">${patient.title}</a></td>
	</tr>
	</c:forEach>
	</table>
	

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