<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Health Services</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<%-- <jsp:include page="../navbar.jsp"></jsp:include> --%>
<style>
/* .vh-100 {
	background-image: url("images/background.jpeg");
	opacity: 0.4;
} */

/* div {
  width: 200px;
  height: 200px;
  display: block;
  position: relative;
}

div::before {
  content: "";
  background: url(images/background.jpeg);
  opacity: 0.5;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  position: absolute;
  z-index: -1;   
} */
</style>
</head>

<body>

		<h1 class="text-center">Welcome to Service Schedule Master</h1>


		<section class="vh-100" style="background-color: #508bfc;" ><!-- style="background-color: #508bfc;" -->
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-8 col-lg-6 col-xl-5">
						<div class="card shadow-2-strong" style="border-radius: 1rem;">
							<div class="card-body p-5 text-center">

								<h3 class="mb-5">Sign in</h3>
								<form action="login.do" method="POST">
									<div class="form-outline mb-4">
										<input type="text" id="typeEmailX-2"
											class="form-control form-control-lg" name="userName"/> <label
											class="form-label" for="typeEmailX-2">Username</label>
									</div>

									<div class="form-outline mb-4">
										<input type="password" id="typePasswordX-2"
											class="form-control form-control-lg" name="password"/> <label
											class="form-label" for="typePasswordX-2">Password</label>
									</div>

									<!-- Checkbox -->
									<div class="form-check d-flex justify-content-start mb-4">
										<input class="form-check-input" type="checkbox" value=""
											id="form1Example3" /> <label class="form-check-label"
											for="form1Example3"> Remember password </label>
									</div>

									<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>

									<hr class="my-4">

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Section: Design Block -->
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>