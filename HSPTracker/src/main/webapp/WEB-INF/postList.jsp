<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">

		<div class="row">
			<!--  -->
			<div class="col-md-3 offset-md-3"></div>
			<div class="col-md-3 offset-md-3">
				<form action="postSearch.do" class="form-group mx-sm-3 mb-2 mt-2">
					<input type="search" class="rounded" name="keyword"
						placeholder="Type your search here" aria-label="Search"
						aria-describedby="search-addon" />
					<button type="submit" class="btn btn-secondary mb-2">Search</button>
				</form>
			</div>
		</div>
		<div class="text-center">
			<h3>Posts of Quick Research</h3>
		</div>

		<c:forEach var="post" items="${posts}">
			<div
				class="border rounded overflow-hidden flex-md-row mb-4 shadow-sm">
				<p>
					Title: <strong>${post.title}</strong>
				</p>
				<br>
				<p>
					<c:out value="${post.content}" />
				</p>
			</div>
		</c:forEach>

		<form action="postAdded.do" method="POST">

			<div
				class="input-group mb-3 border rounded overflow-hidden flex-md-row mb-4 shadow-sm">
				<div class="input-group-prepend">Title</div>
				<input class="form-control" id="reviewBox" type="text" required
					name="title" style="margin: 5px"
					placeholder="Write review comment here">
			</div>
			<div
				class="input-group mb-3 border rounded overflow-hidden flex-md-row mb-4 shadow-sm">
				<div class="input-group-prepend">Content</div>
				<br> <input class="form-control" id="reviewBox" type="text"
					required name="content" style="height: 100px; margin: 5px"
					placeholder="Write content here">
			</div>
			<div class="text-center m-1">
				<button type="submit" class="btn btn-warning" data-toggle="button"
					aria-pressed="false">Submit</button>
			</div>
		</form>
	</div>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>


</body>
</html>