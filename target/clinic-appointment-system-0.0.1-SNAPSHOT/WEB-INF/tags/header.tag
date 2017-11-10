<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div id="header">
	<a id="root-link" href="<c:url value="/" />">Clinic Appointment System</a>
	<c:choose>
		<c:when test="${currentUser.role == 'ROLE_ADMIN'}">
			<a class="menu-link" href="<c:url value="/doctor" />">Manage Doctors</a>
		</c:when>
		<c:when test="${currentUser.role == 'ROLE_DOCTOR'}">
			
		</c:when>
		<c:when test="${currentUser.role == 'ROLE_RECEPTIONIST'}">
			<a class="menu-link" href="<c:url value="/appointment" />">View Appointments</a>
		</c:when>
		<c:when test="${currentUser.role == 'ROLE_PATIENT'}">
			<a class="menu-link" href="<c:url value="/appointment/save" />">Make Appointment</a>
			<a href="<spring:url value="/patients/prescription"></spring:url>">Medical Report</a>
		</c:when>
	</c:choose>
	<div class="tools">
		<security:authorize access="isAnonymous()">
			<a href="<spring:url value="/patients/addPatient"></spring:url>">Sign Up</a> |
			<a href="<spring:url value='/login' />">Login</a>
		</security:authorize>
		<security:authorize access="isAuthenticated()">
			<a>Hi, ${currentUser.username}!</a>
			<a onclick="document.getElementById('logout-form').submit();">Logout</a>
			<form id="logout-form" action="<spring:url value="/logout"></spring:url>" method="post" class="hidden">
				<security:csrfInput />
			</form>
		</security:authorize>
	</div>
</div>