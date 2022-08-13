<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Schedule</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<jsp:include page="../navbar.jsp"></jsp:include>
</head>
<body>

	<table class="table table-striped">
		<thead>

			<tr>
				<th scope="col">Service Date</th>
				<th scope="col">Client</th>
				<th scope="col">Client Street Address</th>
				<th scope="col">Client City</th>
				<th scope="col">Service Provider</th>
				<th scope="col">Service Type</th>
				<th scope="col">Employment Type</th>
				<th scope="col">Bill Status</th>
				<th scope="col">Bill Amount</th>
				<th scope="col">Payroll Amount</th>
				<th scope="col">Gross Margin</th>
			</tr>
		</thead>
		<tbody>
	<c:forEach var="schedule" items="${schedules}">
			<tr>
				<td>${schedule.serviceDate}</td>
				<td><c:out value="${schedule.client}" /></td>
				<td><c:out value="${schedule.street}" /></td>
				<td><c:out value="${schedule.city}" /></td>
				<td><c:out value="${schedule.nurse}" /></td>
				<td><c:out value="${schedule.serviceType}" /></td>
				<td><c:out value="${schedule.employmentType}" /></td>
				<td><c:out value="${schedule.billStatus}" /></td>
				<td><c:out value="${schedule.billAmount}" /></td>
				<td><c:out value="${schedule.payrollAmount}" /></td>
				<td><c:out value="${schedule.grossMargin}" /></td>

			</tr>
</c:forEach>
		</tbody>
	</table>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>