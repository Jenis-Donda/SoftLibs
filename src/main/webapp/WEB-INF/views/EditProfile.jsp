<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Profile | SoftLib</title>


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link type="text/css" href="/Software/resources/vendor/aos/aos.css"
	rel="stylesheet">
<link type="text/css"
	href="/Software/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="/Software/resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link type="text/css"
	href="/Software/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link type="text/css"
	href="/Software/resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link type="text/css"
	href="/Software/resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link type="text/css" href="/Software/resources/css/style.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body {
	margin: 0;
	padding-top: 40px;
	color: #2e323c;
	background: rgb(0,19,36);
	min-height: 100vh;
	position: relative;
	height: 100%;
}

.account-settings .user-profile {
	margin: 0 0 1rem 0;
	padding-bottom: 1rem;
	text-align: center;
}

.account-settings .user-profile .user-avatar {
	margin: 0 0 1rem 0;
}

.account-settings .user-profile .user-avatar img {
	width: 90px;
	height: 90px;
	-webkit-border-radius: 100px;
	-moz-border-radius: 100px;
	border-radius: 100px;
}

.account-settings .user-profile h5.user-name {
	margin: 0 0 0.5rem 0;
}

.account-settings .user-profile h6.user-email {
	margin: 0;
	font-size: 0.8rem;
	font-weight: 400;
	color: #9fa8b9;
}

.account-settings .about {
	margin: 2rem 0 0 0;
	text-align: center;
}

.account-settings .about h5 {
	margin: 0 0 15px 0;
	color: #007ae1;
}

.account-settings .about p {
	font-size: 0.825rem;
}

.form-control {
	border: 1px solid #cfd1d8;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	font-size: .825rem;
	background: #ffffff;
	color: #2e323c;
}

.card {
	background: #ffffff;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	border: 0;
	margin-bottom: 1rem;
}

.text-gray {
	color: #aaa
}

img {
	height: 170px;
	width: 140px
}
</style>
<body>

	<%-- <%@ include file="Basic/navbar.jsp"%> --%>

	<section class="mx-2"></section>
	<div class="container">
		<div class="row gutters">
			<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
				<div class="card h-100">
					<div class="card-body">
						<div class="account-settings">
							<div class="user-profile">
								<div class="user-avatar">
									<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
										alt="Maxwell Admin">
								</div>
								<h5 class="user-name">${user.name }</h5>
								<h6 class="user-email">${user.email }</h6>
							</div>
							<div class="about">
								<h5>About</h5>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
				<div class="card h-100">
					<div class="card-body">
						<form action="/Software/editsave" method="POST">
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<h6 class="mb-2 text-primary">Personal Details</h6>
								</div>

								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">

										<label for="fullName">Full Name</label> <input type="hidden"
											name="id" value="${ user.id}"> <input type="text"
											class="form-control" id="fullName"
											placeholder="Enter full name" value="${user.name }"
											name="name">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="eMail">Email</label> <input type="email"
											class="form-control" id="eMail" placeholder="Enter email ID"
											value="${user.email}" name="email" readonly>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="phone">Phone</label> <input type="text"
											class="form-control" id="phone"
											placeholder="Enter phone number" value="${user.number }"
											name="number">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="website">Website URL</label> <input type="url"
											class="form-control" id="website" placeholder="Website url">
									</div>
								</div>
							</div>
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<h6 class="mt-3 mb-2 text-primary">Address</h6>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="Street">Address</label>
										<textarea rows="2" cols="10" class="form-control" id="address"
											name="address" placeholder="Enter Address">${user.address}</textarea>

									</div>
								</div>
								<!-- <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="ciTy">City</label> <input type="name"
											class="form-control" id="ciTy" placeholder="Enter City">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="sTate">State</label> <input type="text"
											class="form-control" id="sTate" placeholder="Enter State">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="zIp">Zip Code</label> <input type="text"
											class="form-control" id="zIp" placeholder="Zip Code">
									</div>
								</div> -->
							</div>
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="text-right">

										<input type="submit" id="submit" name="submit"
											class="btn btn-primary mt-3" value="Update">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="container py-5">
		<div class="row text-center text-white mb-5">
			<div class="col-lg-7 mx-auto">
				<h2 class="">Purchased Software</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<!-- List group-->
				<ul class="list-group shadow">
					<!-- list group item-->
					<c:if test="${softs.size() == 0}">
						<li class="list-group-item">
							<b>You have not purchased any Software Yet.</b>
						</li>
					</c:if>
					<c:forEach var="software" items="${softs}">
						<li class="list-group-item">
							<!-- Custom content-->
							<div
								class="media align-items-lg-center d-flex flex-column flex-lg-row p-3">
								<div class="media-body order-2 order-lg-1">
									<h4 class="mt-0 font-weight-bold mb-2">${software.pname }</h4>
									<!-- <p class="font-italic text-muted mb-0 small">128 GB ROM |
										15.49 cm (6.1 inch) Display 12MP Rear Camera | 7MP Front
										Camera A12 Bionic Chip Processor</p> -->
									<div
										class="d-flex align-items-center justify-content-between mt-1">
										<b class="font-weight-bold my-2">Rs. ${software.amount }</b>
										<ul class="list-inline small mx-5">
											<li class="list-inline-item m-0"><i
												class="fa fa-star text-success"></i></li>
											<li class="list-inline-item m-0"><i
												class="fa fa-star text-success"></i></li>
											<li class="list-inline-item m-0"><i
												class="fa fa-star text-success"></i></li>
											<li class="list-inline-item m-0"><i
												class="fa fa-star text-success"></i></li>
											<li class="list-inline-item m-0"><i
												class="fa fa-star-half-o text-success"></i></li>
										</ul>
									</div>
								</div>
								<!-- <img src="https://i.imgur.com/KFojDGa.jpg"
									alt="Generic placeholder image" width="100"
									class="ml-lg-5 order-1 order-lg-2"> -->
							</div> <!-- End -->
						</li>
						<!-- End -->

					</c:forEach>
				</ul>
				<!-- End -->
			</div>
		</div>
	</div>


</body>
<%-- <jsp:include page="Basic/footer.jsp"></jsp:include> --%>

<a href="#"
	class="back-to-top d-flex align-items-center justify-content-center"><i
	class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/Software/resources/vendor/aos/aos.js"></script>
<script
	src="/Software/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/Software/resources/vendor/glightbox/js/glightbox.min.js"></script>
<script
	src="/Software/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/Software/resources/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/Software/resources/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/Software/resources/js/main.js"></script>

</html>