<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
		<!--  -->
		<div class="col-md-3 offset-md-3"></div>
		<div class="col-md-3 offset-md-3">
			<form action="searchByClient.do" class="form-group mx-sm-3 mb-2 ">
				<input type="search" class="rounded" name="search"
					placeholder="Search By Client Name" aria-label="Search"
					aria-describedby="search-addon" />
				<button type="submit" class="btn btn-secondary mb-2">Search</button>
			</form>
		</div>
	</div>
	<div class="container-fluid">
		<!-- 	    <form action="searchByClient.do" class="form-inline float-left " >my-2 my-lg-0
      <input class="form-control mr-sm-2" type="search" name="search" placeholder="Type client name" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search By Client</button>
    </form> -->

		<div class="row text-center">
			<h3>SCHEDULE MASTER</h3>
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
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="schedule" items="${schedules}">
					<!-- construct an delete link with schedule id  -->
					<c:url var="updateLink" value="updateSchedule">
						<c:param name="id" value="${schedule.id}" />
					</c:url>
					<!-- construct an update link with schedule id  -->
					<c:url var="deleteLink" value="deleteSchedule">
						<c:param name="id" value="${schedule.id}" />
					</c:url>
					<tr>
						<td>${schedule.serviceDate}</td>
						<td><c:out value="${schedule.client}" /></td>
						<td><c:if test="${schedule.street != null}">
								<c:out value="${schedule.street}" />
							</c:if></td>
						<td><c:out value="${schedule.city}" /></td>
						<td><c:out value="${schedule.nurse}" /></td>
						<td><c:out value="${schedule.serviceType}" /></td>
						<td><c:out value="${schedule.employmentType}" /></td>
						<td><c:out value="${schedule.billStatus}" /></td>
						<td><fmt:formatNumber value="${schedule.billAmount}"
								type="currency" /></td>
						<td><fmt:formatNumber value="${schedule.payrollAmount}"
								type="currency" /></td>
						<%-- <td><c:if test ="${count > 0}" />"${schedule.grossMargin}"</td> --%>
						<td><c:if test="${count > 0}" /> <fmt:formatNumber
								value="${schedule.grossMargin}" type="percent" /></td>
						<td><a href="${updateLink}">Update</a>|<a
							href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this schedule?'))) return false">Delete</a></td>


					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="row ">
			<div class="col-sm"></div>

			<div class="col-sm text-center d-flex flex-row  ">
				<div style="margin-right: 10px">
					<a href="addService.do" class="btn btn-info" role="button"
						aria-pressed="true">Add Service</a>
				</div>
				<div style="margin-right: 10px">
					<a href="calculateMargin.do" class="btn btn-info" role="button"
						aria-pressed="true">Calculate Margin</a>
				</div>
			</div>
			<div class="col-sm"></div>
		</div>
	</div>
	<%-- <div class="col-sm text-center d-flex flex-row float-none" class="mr-3">
		<div style="margin-right: 10px">
			<form action="addService.jsp" method="POST">
				<input type="hidden" name="filmId"
					value="<c:out value="${film.id }"/>" />
				<button type="submit" class="btn btn-info mr-5">Add a Service</button>
			</form>
		</div>
		<div>
			<input type="hidden" />
		</div>
		<div>
			<form action="presentFilmForUpdate.do" method="GET">
				<input type="hidden" name="filmId"
					value="<c:out value="${film.id }"/>" />
				<button type="submit" class="btn btn-info mx-auto">Calculate Margin</button>
			</form>
		</div>
	</div> --%>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>