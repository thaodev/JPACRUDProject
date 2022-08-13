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

	<form action="updateSchedule.do" class="text-center" method="POST">
		<input type="hidden" name="id"
			value="<c:out value= "${schedule.id}"/>" />
		<div class="form-group">
			<label for="date">Service Date*</label> <input type="text"
				class="form-control" name="serviceDate" id="date" required
				aria-describedby="description" placeholder="Date format YYYY-M-D"
				value="schedule == null ? '' : <c:out value="${schedule.serviceDate }"/>">
		</div>
		<div class="form-group">
			<label for="client">Client</label> <input type="text"
				class="form-control" name="client" id="client"
				aria-describedby="description" placeholder="Enter client"
				value="schedule == null ? '' :<c:out value="${schedule.client }"/>">
		</div>
		<div class="form-group">
			<label for="street">Street</label> <input type="text"
				class="form-control" name="street" id="street"
				placeholder="Enter Street"
				value="schedule == null ? '' :<c:out value="${schedule.street }"/>">
		</div>
		<div class="form-group">
			<label for="city">city</label> <input type="text"
				class="form-control" name="city" id="city" placeholder="Enter city"
				value="schedule == null ? '' :<c:out value="${schedule.city }"/>">
		</div>
		<div class="form-group">
			<label for="nurse">Service Provider</label> <input type="text"
				class="form-control" name="nurse" id="nurse"
				placeholder="Enter nurse"
				value="schedule == null ? '' :<c:out value="${schedule.nurse }"/>">
		</div>
		<div class="form-group">
			<label for="service type">Service Type</label> <select
				class="form-select" name="serviceType" required id="service type"
				aria-label="Default select example">
				<option selected></option>
				<!-- 					<option value="schedule == null ? '' : 'PDN'">PDN</option>
 -->
				<option
					<c:if test="${schedule != null && schedule.serviceType == 'PDN'} "> selected</c:if>
					value="PDN">PDN</option>
				<option
					<c:if test="${schedule != null && schedule.serviceType == 'SN'} "> selected</c:if>
					value="SN">SN</option>
				<option
					<c:if test="${schedule != null && schedule.serviceType == 'HHA'} "> selected</c:if>
					value="HHA">HHA</option>
				<option
					<c:if test="${schedule != null && schedule.serviceType == 'Therapy'} "> selected</c:if>
					value="Therapy">Therapy</option>
			</select>
		</div>
		<div class="form-group">
			<label for="empl type">Employment Type</label> <select
				class="form-select" name="employementType" required id="empl type"
				aria-label="Default select example">
				<option selected></option>
				<option
					<c:if test="${schedule != null && schedule.employmentType == 'Contractor'} "> selected</c:if>
					value="Contractor">Contractor</option>
				<option
					<c:if test="${schedule != null && schedule.employmentType == 'Employee'} "> selected</c:if>
					value="Employee">Employee</option>

			</select>
		</div>
		<div class="form-group">
			<label for="status">Bill Status</label> <select class="form-select"
				name="billStatus" required id="status"
				aria-label="Default select example">
				<!-- <option selected></option> -->
				<option
					<c:if test="${schedule != null && schedule.billStatus == true} "> selected</c:if>
					value="true">Yes</option>
				<option
					<c:if test="${schedule != null && schedule.billStatus == false} "> selected</c:if>
					value="false">No</option>

			</select>
		</div>

		<div class="form-group">
			<label for="bm">Bill Amount</label> <input type="number"
				class="form-control" id="bm" name="billAmount"
				placeholder="Enter Bill Amount"
				value="schedule == null ? '' :<c:out value="${schedule.billAmount }"/>">
		</div>
		<div class="form-group">
			<label for="pm">Payroll Amount</label> <input type="number"
				class="form-control" id="pm" name="payrollAmount"
				placeholder="Enter Payroll Amount"
				value="schedule == null ? '' :<c:out value="${schedule.payrollAmount }"/>">
		</div>
		<div class="form-group">
			<label for="gm">Gross Margin</label> <input type="number"
				class="form-control" id="gm" name="grossMargin"
				value="schedule == null ? '' :<c:out value="${schedule.grossMargin}"/>">
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
		<div class="text-center mt-3">
			<button type="submit" id="btn" name="update" class="btn btn-primary">UpdateÏ
				Service Film</button>
		</div>


	</form>


	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>