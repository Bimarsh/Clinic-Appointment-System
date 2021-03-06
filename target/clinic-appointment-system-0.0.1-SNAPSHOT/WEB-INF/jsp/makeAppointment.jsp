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
		<form:form modelAttribute="appointment" action="save"
			method="post">
			<fieldset>
				<legend>
					<spring:message code="makeapp.form.title"></spring:message>
				</legend>
				
				<p>
					<label for="description"><spring:message
							code="makeapp.description" /></label>
					<form:input path="description" />
					<form:errors path="description" cssStyle="color : red;" />
	
				</p>
						<p id="buttons">
					<input id="reset" type="reset"
						value="<spring:message code="savePatient.form.reset.label"/>"
						tabindex="4"> <input id="submit" type="submit"
						tabindex="5"
						value="Request Appointment">
				</p>
			</fieldset>
		</form:form>
	</div>
	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>