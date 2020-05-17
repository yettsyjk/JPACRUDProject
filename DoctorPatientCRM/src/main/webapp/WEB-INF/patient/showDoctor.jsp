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
<title>Patient CRM | Doctor</title>
<link rel="icon"
	href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Caduceus.svg/170px-Caduceus.svg.png"
	sizes="32X32" type="image/png">

</head>
<body>
	<%--Edit the file nav.jsp to change nav links --%>
	<%@ include file="navbar.jsp"%>
	<br>
	<div class="container-fluid">
		<c:choose>
			<c:when test="${! empty patients }">
				<div class="container">
					<table class="table table-borderless">
						<tbody>
							<tr>
								<th scope="row" class="px-0 pb-3 pt-2">List of Patients</th>
							</tr>

							<c:forEach var="patient" items="${patients}">
								<tr class="mt-2">
									<td class="pb-3 pt-2">Doctor: ${patient.docLastName }</td>
									<td class="pb-3 pt-2">Patient ID: ${patient.id }</td>
									<td class="pb-3 pt-2">Patient: <a
										class="list-group-item list-group-item-secondary"
										href="getPatient.do?pid=${patient.id}">${patient.lastName},
											${patient.firstName}</a></td>

								</tr>
						</tbody>
						</c:forEach>
					</table>
					</div>
			</c:when>
			<c:otherwise>
				<h5>Invalid Doctor List</h5>
			</c:otherwise>
		</c:choose>
	</div>
	<br>
	<div class="container">
		<a href="index.do" class="btn btn-warning">Home</a>
	</div>
	<%@ include file="footer.jsp"%>
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