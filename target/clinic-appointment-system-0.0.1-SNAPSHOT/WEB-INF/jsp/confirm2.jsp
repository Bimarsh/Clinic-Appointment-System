<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib  uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinic Appointment System</title>
<tags:basecss></tags:basecss>
<link href="<c:url value='/resources/css/patient.css'/>" rel="stylesheet" />
</head>
<body>
	<tags:header></tags:header>
	<div id="global">
		<h1>Welcome to Clinic Appointment System!</h1>
		Patient Name: ${appointment.patient.firstName}&nbsp;${appointment.patient.lastName}<br>
		Symptoms description: ${appointment.description}<br>
		Appointment Status: ${appointment.bookingtype}<br>

		<table border=1>
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Doctor Speciality</th>
				<th>Type Date</th>
				<th>Confirm Appointment</th>
			</tr>

			<c:forEach items="${listofDoctor}" var="doctor">
              <form:form action="" method="post" modelAttribute="appointment">
              <form:errors path="*" cssStyle="color : red;" />
              <input type="hidden" value="${doctor.id}" name="doctor.id"/>
					<input type="hidden" value="${doctor.email}" name="doctor.email"/>
					<input type="hidden" value="${appointment.id}" name="id"/>
					<input type="hidden" value="${appointment.description}" name="description"/>
					<input type="hidden" value="${appointment.bookingtype}" name="bookingtype"/>
					
				<tr>
					<td><input type="text" value="${doctor.firstName}" name="doctor.firstName" readonly/></td>
					<td><input type="text" value="${doctor.lastName}" name="doctor.lastName" readonly/></td>
					<td><input type="text" value="${doctor.speciality}" name="doctor.speciality" readonly/>
					
					</td>
					
					
					<td><input type="text"  name="date"/></td>
					
					
					<td><input type="submit" value="Confirm"/></td>

				</tr>
</form:form>
			</c:forEach>

		</table>
		
			
					
	</div>
	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>