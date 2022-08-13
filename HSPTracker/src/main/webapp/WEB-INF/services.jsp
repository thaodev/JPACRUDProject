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

	<div class="row">
		<div class=" col-md-12 text-center">
			<a href="getServiceDetails.do" class="btn btn-info"
				role="button" aria-pressed="true">Show Service Details</a>
		</div>
	</div>
	Ï

	<table class="table table-striped">
		<thead>

			<tr>
				<th scope="col">Service Date</th>
				<th scope="col">Client</th>
				<th scope="col">Service Provider</th>
				<th scope="col">Employment Type</th>
				<th scope="col">Bill Status</th>
				<th scope="col">Service Type</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="schedule" items="${schedules}">
				<tr>
					<td>${schedule.serviceDate}</td>
					<td><c:out value="${schedule.client}" /></td>
					<td><c:out value="${schedule.nurse}" /></td>
					<td><c:out value="${schedule.employmentType}" /></td>
					<td><c:out value="${schedule.billStatus}" /></td>
					<td><c:out value="${schedule.serviceType}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>