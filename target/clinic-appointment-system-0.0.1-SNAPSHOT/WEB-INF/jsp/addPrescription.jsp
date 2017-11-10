<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinic Appointment System</title>
<tags:basecss></tags:basecss>
<link href="<c:url value='/resources/css/prescription.css'/>" rel="stylesheet" />
</head>
<body>
	<tags:header></tags:header>
	<div id="main">
		<form:form action="" method="post" modelAttribute="prescription">
		<h1>Make a Prescription</h1>
			<p>
				<form:label path="symptomps" cssClass="field-label">Symptoms</form:label>
				<form:textarea path="symptomps" rows="4" cols="80" />
			</p>
			<p>
				<form:label path="diagnosis" cssClass="field-label">Diagnosis</form:label>
				<form:textarea path="diagnosis" rows="4" cols="80" />
			</p>
			<p>
				<form:label path="medication" cssClass="field-label">Medication</form:label>
				<form:textarea path="medication" rows="4" cols="80" />
			</p>
			<p>
				<form:label path="dosages" cssClass="field-label">Dosages</form:label>
				<form:textarea path="dosages" rows="4" cols="80" />
			</p>
			<p>
				<form:label path="date" cssClass="field-label">Date</form:label>
				<form:input path="date" />
			</p>
			<p>
				<input type="submit" value="Submit" />
			</p>
		</form:form>
	</div>
	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>