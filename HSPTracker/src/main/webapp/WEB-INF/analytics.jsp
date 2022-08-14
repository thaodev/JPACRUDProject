<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Performance Analytics</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<jsp:include page="../navbar.jsp"></jsp:include>
</head>
<body>
	<div class="text-center">
		<h3>OUTSTANDING BILLINGS</h3>
	</div>
	<table class="table table-striped ">

		<thead>

			<tr class="table-warning">
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
			<c:forEach var="schedule" items="${notBillSch}">
				<tr>
					<td>${schedule.serviceDate}</td>
					<td><c:out value="${schedule.client}" /></td>
					<td><c:out value="${schedule.street}" /></td>
					<td><c:out value="${schedule.city}" /></td>
					<td><c:out value="${schedule.nurse}" /></td>
					<td><c:out value="${schedule.serviceType}" /></td>
					<td><c:out value="${schedule.employmentType}" /></td>
					<td><c:out value="${schedule.billStatus}" /></td>
					<td><fmt:formatNumber value="${schedule.billAmount}"
							type="currency" /></td>
					<td><fmt:formatNumber value="${schedule.payrollAmount}"
							type="currency" /></td>
					<td><c:if test="${count > 0}" /> <fmt:formatNumber
							value="${schedule.grossMargin}" type="percent" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="text-center">
		<h3>LOW PERFORMACE SCHEDULES</h3>
	</div>
	<table class="table table-striped ">

		<thead>

			<tr class="table-success">
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
			<c:forEach var="schedule" items="${lowGMSch}">
				<tr>
					<td>${schedule.serviceDate}</td>
					<td><c:out value="${schedule.client}" /></td>
					<td><c:out value="${schedule.street}" /></td>
					<td><c:out value="${schedule.city}" /></td>
					<td><c:out value="${schedule.nurse}" /></td>
					<td><c:out value="${schedule.serviceType}" /></td>
					<td><c:out value="${schedule.employmentType}" /></td>
					<td><c:out value="${schedule.billStatus}" /></td>
					<td><fmt:formatNumber value="${schedule.billAmount}"
							type="currency" /></td>
					<td><fmt:formatNumber value="${schedule.payrollAmount}"
							type="currency" /></td>
					<td><c:if test="${count > 0}" /> <fmt:formatNumber
							value="${schedule.grossMargin}" type="percent" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	

	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>