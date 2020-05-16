<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient CRM | navbar</title>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.do">Home</a>
		<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Caduceus.svg/170px-Caduceus.svg.png" 
		alt="greek symbol for healthcare" 
		style="width: 45px; height: 45px;">
		 <br>
		 	<a class="navbar-brand" href="index.do">Resume</a>
		<c:choose>


			<c:when test="${not empty user }">
				<a class="navbar-brand" href="index.do">Profile</a>
				<a class="navbar-brand" href="index.do">Log Out</a>

			</c:when>
			<c:otherwise>
				<a class="navbar-brand" href="login.do">Log In</a>
			</c:otherwise>
		</c:choose>
	</nav>
</body>
</html>