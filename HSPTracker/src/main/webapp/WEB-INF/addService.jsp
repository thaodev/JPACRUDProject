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

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="container-fluid">
		<form action="addSchedule.do" method="POST">
			<%-- <input type="hidden" name="id"
			value="<c:out value= "${schedule.id}"/>" /> --%>
			<div class="form-group">
				<label for="datepicker">Service Date*</label> <input type="text"
					class="form-control" name="serviceDate" id="datepicker"
					aria-describedby="description" placeholder="" />
				
				<%@ page
					import="java.time.LocalDate,java.time.format.DateTimeFormatter,java.text.ParseException"%>
				<%
				out.println(request.getParameter("serviceDate"));
				if (request.getParameter("serviceDate") != null) {
					out.println("inside converter");
					String dateStr = request.getParameter("serviceDate");
					out.println(dateStr);
					DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
					LocalDate serviceDate = LocalDate.parse(dateStr, formatter);
					out.println(serviceDate);
				}
				%>
			</div>
			
			<h4 id="selectedDtaeVal"></h4>
				<script> 
				$( function() {
					$.datepicker.setDefaults({
				onClose:function(date, inst){ $("#selectedDtaeVal").html(date); }
				});
					$( "#datepicker" ).datepicker();
				});
				</script>
			<div class="form-group">
				<label for="client">Client*</label> <input type="text"
					class="form-control" required name="client" id="client"
					aria-describedby="description" placeholder="Enter client" />
			</div>
			<div class="form-group">
				<label for="street">Street</label> <input type="text"
					class="form-control" name="street" id="street"
					placeholder="Enter Street" />
			</div>
			<div class="form-group">
				<label for="city">City</label> <input type="text"
					class="form-control" name="city" id="city" placeholder="Enter city" />
			</div>
			<div class="form-group">
				<label for="nurse">Service Provider*</label> <input type="text"
					class="form-control" required name="nurse" id="nurse"
					placeholder="Enter nurse" />
			</div>
			<div class="form-group">
				<label for="service type">Service Type</label> <select
					class="form-select" name="serviceType" id="service type"
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
					class="form-select" name="employmentType" id="empl type"
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
					name="billStatus" id="status" aria-label="Default select example">
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
					placeholder="Enter Bill Amount" />
			</div>
			<div class="form-group">
				<label for="pm">Payroll Amount</label> <input type="number"
					class="form-control" id="pm" name="payrollAmount"
					placeholder="Enter Payroll Amount" />
			</div>
			<div class="form-group">
				<label for="gm">Gross Margin</label> <input type="number"
					class="form-control" id="gm" name="grossMargin" />
			</div>


			<div class="text-center mt-3">
				<button type="submit" id="btn" name="add" class="btn btn-primary">Add
					Service Film</button>
			</div>



		</form>

	</div>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>