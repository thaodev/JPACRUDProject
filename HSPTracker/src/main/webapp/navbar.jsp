<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="bootstrapHead.jsp"></jsp:include>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Home Health</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="service.do">Home <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="getServiceDetails.do">Services</a>
      </li>
<li class="nav-item">
        <a class="nav-link" href="getKPIs.do">KPIs</a>
      </li>
<!--       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          KPIs
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="KPIsByCity.do">By City</a>
          <a class="dropdown-item" href="KPIsByDepartment.do">By Department</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
    <li class="nav-item">
        <a class="nav-link" href="getAnalytics.do">Analytics</a>
      </li>
<!--        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Analytics
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="byCity.do">By City</a>
          <a class="dropdown-item" href="byDepartment.do">By Department</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div> -->
<!--       <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>--->
       <li class="nav-item float-right">
        <a class="nav-link" href="logout.do">Logout</a>
      </li>
    </ul>

  <!--   <span class=" float-right">
      <a class="nav-link" href="logout.do">Logout</a>
    </span> -->
   
  </div>
</nav>