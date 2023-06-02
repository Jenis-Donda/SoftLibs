<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/vendor/aos/aos.css" rel="stylesheet">
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">
<title>Accounting page | SoftLib</title>
</head>
<style>
	p {
 overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
</style>
<body>
	<!-- <h1>Hello, world!</h1> -->
	<jsp:include page="Basic/navbar.jsp"></jsp:include>

	<section class="py-5 text-center container">
		<div class="row py-lg-5">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">Accounting Softwares</h1>
				<p class="lead text-muted">Accounting software is a computer program that assists bookkeepers and 
				accountants in recording and reporting a firm's financial transactions. The functionality of 
				accounting software differs from product to product.</p>
				
			</div>
		</div>
	</section>
	
	



	<div class="container">

		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">


			<c:forEach var="s" items="${list}">
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="getimageacc/<c:out value='${s.id}'/>" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<h5 class="mx-3 card-title "><c:out value='${s.name}'/></h5>
						<div class="card-body">
							<p class="card-text">${s.description}</p>
							<b>Rs. ${s.price }</b>
							
							<div class="d-flex justify-content-center align-items-center mt-3">
								<div class="btn-group">
								 <c:if test="${s.name eq 'FreshBooks'}">
									<a href='detail-8'>
									</c:if>
									<c:if test="${s.name eq 'Wave'}">
									<a href='detail-9'>
									</c:if>
									<c:if test="${s.name eq 'Xero'}">
									<a href='detail-10'>
									</c:if>
									<c:if test="${s.name eq 'Zoho Books'}">
									<a href='detail-11'>
									</c:if>
									<c:if test="${s.name eq 'AccountEdge Pro'}">
									<a href='detail-12'>
									</c:if>
									<c:if test="${s.name eq 'myBillBook'}">
									<a href='detail-13'>
									</c:if>
									<c:if test="${s.name eq 'SlickPie'}">
									<a href='detail-14'>
									</c:if>
									<c:if test="${s.name eq 'GnuCash'}">
									<a href='detail-15'>
									</c:if>
									<button type="button" class="btn btn-outline-primary btn-sm" data-toggle="button" aria-pressed="false" autocomplete="off" style="border-radius:10px;">Details</button></a>
									<a href="buyacc/${s.id }" class=" mx-3 btn btn-outline-primary btn-sm" style="border-radius:10px;">Buy Now</a>
								</div>
								<%-- <div class="btn-group">
									<a href="buyacc/${s.id }" class="btn btn-outline-primary btn-sm" style="border-radius:10px;">Buy Now</a>
									<a href="" class="mx-3 btn  btn-outline-primary btn-sm" style="border-radius:10px;">Add to Cart</a>
								</div> --%>
							</div>
						</div>
					</div>
				</div>
				
			</c:forEach>
		</div>
	</div>
	
	<jsp:include page="Basic/footer.jsp"></jsp:include>

   <!--  Optional JavaScript; choose one of the two!

    Option 1: Bootstrap Bundle with Popper
     -->
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>