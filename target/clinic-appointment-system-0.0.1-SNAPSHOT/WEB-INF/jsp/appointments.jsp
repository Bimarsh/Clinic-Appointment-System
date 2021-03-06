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

		<table border=1>
		<tr>
		<th>id</th>
		<th>Patient Name</th>
			   <th>Description</th>
			    <th>Appointment Status</th>
			   <th>Cancel Appointment</th>
			   <th>Confirm Appointment</th></tr>
			  
			<c:forEach items="${listofAppointments}" var="appointment">
			   
				<tr>
				
					<td>${appointment.id}</td>
					<td>${appointment.patient.firstName}</td>
					<td>${appointment.description}</td>
					<td>${appointment.bookingtype}</td>
					<td><a
						href="appointment/cancel?id=<c:out value="${appointment.id}"/>">Cancel
							</a></td>
							<td><a
						href="appointment/selectDoc?id=<c:out value="${appointment.id}"/>">Confirm
							</a></td>
							
				</tr>
					
			</c:forEach>

		</table>
	</div>

	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>