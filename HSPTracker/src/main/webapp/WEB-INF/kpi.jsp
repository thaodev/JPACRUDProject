<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KPIs</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<jsp:include page="../navbar.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<h3>KPIs by Cities</h3>
		</div>
		<table
			class="table table-striped table-bordered table-hover table-sm text-center">
			<thead>
				<tr class="table-info">
					<th scope="col">City</th>
					<th scope="col">Revenue</th>
					<th scope="col">COGS</th>
					<th scope="col">Gross Margin</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kpi" items="${kpiByCity}">
					<tr>
						<td><c:out value="${kpi[0]}" /></td>
						<td><fmt:formatNumber value="${kpi[1]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[2]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[3]}" type="percent" /></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div></div>
		<div class="text-center">
			<h3>KPIs by Services</h3>
		</div>
		<table
			class="table table-striped table-bordered table-hover table-sm text-center">
			<thead>
				<tr class="table-danger">
					<th scope="col">Service</th>
					<th scope="col">Revenue</th>
					<th scope="col">COGS</th>
					<th scope="col">Gross Margin</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kpi" items="${kpiByService}">
					<tr>
						<td><c:out value="${kpi[0]}" /></td>
						<td><fmt:formatNumber value="${kpi[1]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[2]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[3]}" type="percent" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-center">
			<h3>KPIs by Employment Type</h3>
		</div>
		<table
			class="table table-striped table-bordered table-hover table-sm text-center">
			<thead>
				<tr class="table-dark">
					<th scope="col">Employment Type</th>
					<th scope="col">Revenue</th>
					<th scope="col">COGS</th>
					<th scope="col">Gross Margin</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kpi" items="${kpiByEmploymentType}">
					<tr>
						<td><c:out value="${kpi[0]}" /></td>
						<td><fmt:formatNumber value="${kpi[1]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[2]}" type="currency" /></td>
						<td><fmt:formatNumber value="${kpi[3]}" type="percent" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>