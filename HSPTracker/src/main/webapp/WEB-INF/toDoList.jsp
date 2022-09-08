<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo List</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<style>
body {
	background-image : url("https://images.unsplash.com/photo-1503551723145-6c040742065b-v2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80");
}
</style>
</head>
<body>
	<section class="vh-100 bg-info">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-lg-9 col-xl-7">
					<div class="card rounded-3">
						<div class="card-body p-4">

							<h4 class="text-center my-3 pb-3">To Do App</h4>

							<form action="addToDo"
								class="row row-cols-lg-auto g-3 justify-content-center align-items-center mb-4 pb-2">
								<div class="col-12">
									<div class="form-outline">
										<input type="text" id="form1" class="form-control" name="content"
											placeholder="Enter a task here" />
									</div>
								</div>

								<div class="col-12">
									<button type="submit" class="btn btn-primary">Save</button>
								</div>

							</form>

							<table class="table mb-4">
								<thead>
									<tr>
										<th scope="col">No.</th>
										<th scope="col">Todo item</th>
										<th scope="col">Status</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<c:forEach var="todo" items="${list}">
								<tbody>
									<tr>
										<th scope="row">${todo.id}</th>
										<td>${todo.content}</td>
										<td><select class="form-control"
											id="exampleFormControlSelect1">
												<option>Hasn't started</option>
												<option>In Progress</option>
												<option>Completed</option>
										</select></td>
										<td>
											<button type="submit" class="btn btn-sm btn-danger" onclick="location.href='deleteToDo?id=${todo.id}'">Delete</button>
										</td>
									</tr>

								</tbody>
								</c:forEach>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>