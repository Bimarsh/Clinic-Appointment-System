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
		<form:form modelAttribute="newPatient" action="addPatient"
			method="post">
			<fieldset>
				<legend>
					<spring:message code="savePatient.form.title"></spring:message>
				</legend>
			
					<form:errors path="*" cssStyle="color : red;" />
		
				<p>
					<label for="firstName"><spring:message
							code="savePatient.form.fname.label" /></label>
					<form:input path="firstName" />
					<form:errors path="firstName" cssStyle="color : red;" />
				</p>
				<p>
					<label for="lastName"><spring:message code="savePatient.form.lname.label" /></label>
					<form:input path="lastName" />
					<form:errors path="lastName" cssStyle="color : red;" />
				</p>

				<p>
					<label for="birthDate"><spring:message
							code="savePatient.form.bdate.label" /></label>
					<form:input path="birthDate" id="birthDate" />
					<form:errors path="birthDate" cssStyle="color : red;" />
				</p>
				<p>
					<label for="email"><spring:message
							code="savePatient.form.email.label"></spring:message></label>
					<form:input path="email" id="email" />
					<form:errors path="email" cssStyle="color : red;" />
					<p>
				<p>
					<label for="password"><spring:message
							code="savePatient.form.password.label" /></label>
					<form:password path="user.password" id="password" />
					<form:errors path="user.password" cssStyle="color : red;" />
				</p>
				<p>
					<label for="cpassword"><spring:message
							code="savePatient.form.cpassword.label"></spring:message></label>
					<form:password path="confirmedPassword" id="cpassword" />
					<form:errors path="confirmedPassword" cssStyle="color : red;" />
					<p>
		           <hr>
				<h4 style="text-align: center;">
				
					<spring:message code="address.label" />
				</h4>
				<p>
					<label for="street"><spring:message code="address.street" />
					</label>
					<form:input path="address.street" id="street" />
				
					<form:errors path="address.street" cssStyle="color : red;" />
				
				</p>
				<p>
					<label for="state"><spring:message code="address.state" />
					</label>
					<form:input path="address.state" id="state" />
				
					<form:errors path="address.state" cssStyle="color : red; " />
				
				</p>
				<label for="city"><spring:message code="address.city" />
					</label>
					<form:input path="address.city" id="city" />
				
					<form:errors path="address.city" cssStyle="color : red; " />
				
				</p>
				<p>
					<label for="zipCode"><spring:message code="address.zipcode" /></label>
					<form:input path="address.zipCode" id="zipCode" />
				
					<form:errors path="address.zipCode" cssStyle="color : red; " />

				</p>
				<p id="buttons">
					<input id="reset" type="reset"
						value="<spring:message code="savePatient.form.reset.label"/>"
						tabindex="4"> 
						<input id="submit" type="submit"
						tabindex="5"
						value="<spring:message code="savePatient.form.add.label"/>">
				</p>
			</fieldset>
		</form:form>
	</div>
	<tags:footer></tags:footer>
	<tags:basejs></tags:basejs>
</body>
</html>