<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h1>List of awaiting appointments!</h1>
<table>
	<thead>
		<tr>
			<th>#</th>
			<th>Patient Name</th>
			<th>Date</th>
			<th>Description</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${appointments}" var="appointment" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${appointment.patient.firstName} ${appointment.patient.lastName}</td>
				<td><fmt:formatDate value="${appointment.date}" type="date" pattern="MM-dd-yyyy" /></td>
				<td>${appointment.description}</td>
				<td><a href="<c:url value="/prescription"><c:param name="appointmentId" value="${appointment.id}"/></c:url>">Details</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>