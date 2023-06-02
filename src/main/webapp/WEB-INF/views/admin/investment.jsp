<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Investment | SoftLib</title>
<link href="resources/img/softlib2.png" rel="icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
	
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Amaranth&display=swap');
body {
	
	min-height: 100vh
}

.text-gray {
	color: #aaa
}

img {
	height: 170px;
	width: 200px
}

h1{
  color: black;
  font-family: 'Amaranth', sans-serif;
}

a{
font-family: 'Amaranth', sans-serif;
}
</style>
<body>

	<div class="container py-5">

		<div class="row text-center text-white mb-5">
			<div class="col-lg-7 mx-auto">
				<h1 class="display-4">Investment Softwares</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<!-- List group-->
				<ul class="list-group shadow">
					<c:forEach var="s" items="${list}">
						<li class="list-group-item mt-2" style="box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;">
							<!-- Custom content-->
							<div
								class="media align-items-lg-center flex-column flex-lg-row p-3">
								<div class="media-body order-2 order-lg-1">
									<h5 class="mt-0 font-weight-bold mb-2">${s.name }</h5>
									<p class="font-italic text-muted mb-0 small">${s.description}</p>
									<div
										class="d-flex align-items-center justify-content-between mt-1">
										<h6 class="font-weight-bold my-2">Rs. ${s.price }</h6>

									</div>
									<a href="deleteinv/${s.id }" id="logout-link">  <button class="btn btn-danger btn-sm rounded-0 mt-0 mb-0 " type="button" data-toggle="tooltip" data-placement="top" title="Delete" id="logout-btn"><i class="fa fa-trash"></i> Remove</button></a>
								</div>
								<img src="getimage/<c:out value='${s.id}'/>"
									alt="Generic placeholder image" width="300"
									class="ml-lg-5 order-1 order-lg-2">
							</div> <!-- End -->
						</li>
					</c:forEach>
					<a href="addinvest"
						class="btn btn-primary mt-3 mx-auto d-inline" >Add
						Software</a>
						<a href="back"
						class="btn btn-primary mt-3 mx-auto d-inline" >
						back</a>
				</ul>
				<!-- End -->
			</div>
		</div>


	</div>
</body>
</html>