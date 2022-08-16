<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Update</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<jsp:include page="../navbar.jsp"></jsp:include>
</head>
<body>

	<form action="updateSchedule.do" method="POST">
		<input type="hidden" name="id"
			value="<c:out value= "${schedule.id}"/>" />
		<div class="form-group">
			<label for="date">Service Date*</label> <input type="text"
				class="form-control" name="serviceDate" id="date" required
				aria-describedby="description" placeholder="Date format YYYY-M-D"
				value="<c:out value="${schedule.serviceDate }"/>">
		</div>
		<div class="form-group">
			<label for="client">Client*</label> <input type="text"
				class="form-control" required name="client" id="client"
				aria-describedby="description" placeholder="Enter client"
				value="<c:out value="${schedule.client }"/>">
		</div>
		<div class="form-group">
			<label for="street">Street</label> <input type="text"
				class="form-control" name="street" id="street"
				placeholder="Enter Street"
				value="<c:out value="${schedule.street }"/>">
		</div>
		<div class="form-group">
			<label for="city">City</label> <input type="text"
				class="form-control" name="city" id="city" placeholder="Enter city"
				value="<c:out value="${schedule.city }"/>">
		</div>
		<div class="form-group">
			<label for="nurse">Service Provider</label> <input type="text"
				class="form-control" name="nurse" id="nurse"
				placeholder="Enter nurse"
				value="<c:out value="${schedule.nurse }"/>">
		</div>
		<div class="form-group">
			<label for="service type">Service Type</label> <select
				class="form-select" name="serviceType" id="service type"
				aria-label="Default select example">
				<!-- <option selected>Select service type</option> -->
				<option
					<c:if test="${schedule.serviceType == ServiceType.PDN} "> selected</c:if>
					value="${schedule.serviceType}">PDN</option>
				<option
					<c:if test="${schedule.serviceType == ServiceType.SN} "> selected</c:if>
					value="${schedule.serviceType}">SN</option>
				<option
					<c:if test="${schedule.serviceType == ServiceType.HHA} "> selected</c:if>
					value="${schedule.serviceType}">HHA</option>
				<option
					<c:if test="${schedule.serviceType == ServiceType.Therapy} "> selected</c:if>
					value="${schedule.serviceType}">Therapy</option>
			</select>
		</div>
		<div class="form-group">
			<label for="empl type">Employment Type</label> <select
				class="form-select" name="employmentType" id="empl type"
				aria-label="Default select example">
				<!-- <option selected>Select Employment Type</option> -->
				<option
					<c:if test="${schedule.employmentType == EmploymentType.Contractor} "> selected</c:if>
					value="${schedule.employmentType}">Contractor</option>
				<option
					<c:if test="${schedule.employmentType == EmploymentType.Employee} "> selected</c:if>
					value="${schedule.employmentType}">Employee</option>

			</select>
		</div>
		<div class="form-group">
			<label for="status">Bill Status*</label> <select class="form-select"
				name="billStatus" required id="status"
				aria-label="Default select example">
				<!-- <option selected></option> -->
				<option
					<c:if test="${schedule.billStatus == true} "> selected</c:if>
					value="true">Yes</option>
				<option
					<c:if test="${schedule.billStatus == false} "> selected</c:if>
					value="false">No</option>

			</select>
		</div>

		<div class="form-group">
			<label for="bm">Bill Amount*</label> <input type="number"
				class="form-control" required id="bm" name="billAmount"
				placeholder="Enter Bill Amount"
				value="<c:out value="${schedule.billAmount }"/>">
		</div>
		<div class="form-group">
			<label for="pm">Payroll Amount*</label> <input type="number"
				class="form-control" required id="pm" name="payrollAmount"
				placeholder="Enter Payroll Amount"
				value="<c:out value="${schedule.payrollAmount }"/>">
		</div>
		<div class="form-group">
			<label for="gm">Gross Margin</label> <input type="number"
				class="form-control" id="gm" name="grossMargin"
				value="<c:out value="${schedule.grossMargin}"/>">
		</div>

		<div class="text-center mt-3">
			<button type="submit" id="btn" name="update" class="btn btn-primary">Update
				Service</button>
		</div>
		<c:choose>
			<c:when test="${empty updateResult}">
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${updateResult == true }">
						<p>Schedule is successfully updated</p>
					</c:when>
					<c:otherwise>
						<p>Update is unsuccessful</p>
					</c:otherwise>
				</c:choose>
			</c:otherwise>


		</c:choose>



	</form>


	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>