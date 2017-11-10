<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinic Appointment System - Make Appointment</title>
<tags:basecss></tags:basecss>
<link href="<c:url value='/resources/css/sample.css'/>" rel="stylesheet" />
</head>
<body>
	<tags:header></tags:header>
	<div id="main">
		<form>
			<h1>Make an Appointment</h1>
			<p>
				<label for="firstName" class="field-label">First Name</label>
				<input type="text" id="firstName" name="firstName" />
			</p>
			<p>
				<label for="lastName" class="field-label">Last Name</label>
				<input type="text" id="lastName" name="lastName" />
			</p>
			<p>
				<label for="gender1" class="field-label">Gender</label>
				<label><input type="radio" id="gender1" name="gender" value="F" /> Female</label>
				<label><input type="radio" id="gender2" name="gender" value="M" /> Male</label>
			</p>
			<p>
				<label for="ageGroup" class="field-label">Age Group</label>
				<select id="ageGroup">
					<option value="0">Select...</option>
					<option value="1">Teenager</option>
					<option value="2">Adult</option>
					<option value="3">Senior</option>
				</select>
			</p>
			<p>
				<input type="submit" value="Submit" />
			</p>
		</form>
	</div>
	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>