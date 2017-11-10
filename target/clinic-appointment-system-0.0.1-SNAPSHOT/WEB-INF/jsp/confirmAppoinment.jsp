<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinic Appointment System</title>
<tags:basecss></tags:basecss>
<link href="<c:url value='/resources/css/patient.css'/>"
	rel="stylesheet" />
</head>
<body>
	<tags:header></tags:header>

	<div id="global">

		<h1>Welcome to Clinic Appointment System!</h1>

		${appointment.id}<br> ${appointment.description}<br>
		${appointment.isconfirmed}

		<table border=1>
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Doctor Speciality</th>
				<th>Type Date</th>
				<th>Confirm Appointment</th>
			</tr>

			<c:forEach items="${listofDoctor}" var="doctor">
              
				<tr>
					<td>${doctor.firstName}</td>
					<td>${doctor.lastName}</td>
					<td>${doctor.speciality}</td>
					<td><input type="datetime" name="date"/>
					
					
					<td><a
						href="confirm?doctorid=<c:out value="${doctor.id}"/>&apid=<c:out value="${appointment.id}"/>">Confirm
					</a></td>

				</tr>

			</c:forEach>

		</table>
	</div>

	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>