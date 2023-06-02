<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment | SoftLib</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/Software/resources/vendor/aos/aos.css" rel="stylesheet">
<link href="/Software/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/Software/resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/Software/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/Software/resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="/Software/resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body {
	background: #f5f5f5
}

.rounded {
	border-radius: 1rem
}

.nav-pills .nav-link {
	color: #555
}

.nav-pills .nav-link.active {
	color: white
}

input[type="radio"] {
	margin-right: 5px
}

.bold {
	font-weight: bold
}
</style>
<body>
	<div class="container py-5">
		<!-- For demo purpose -->
		<div class="row mb-4">
			<div class="col-lg-8 mx-auto text-center">
				<h1 class="display-6">Payment Gateway</h1>
			</div>
		</div>
		<!-- End -->
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="card ">
					<div class="card-header">

						<!-- End -->
						<!-- Credit card form content -->
						<div class="tab-content">
							<!-- credit card info-->
							<div id="credit-card" class="tab-pane fade show active pt-3">
								<form action="/Software/pay" method="post">
									<div class="form-group">
										<label for="username">
											<h6>Card Owner</h6>
											${product.name }
										</label> 
										<input type="hidden" name="pid" value="${product.id }">
										<input type="hidden" name="pname" value="${product.name }">
										<input type="hidden" name="pprice" value="${product.price }">
										<input type="text" name="username"
											placeholder="Card Owner Name" required class="form-control">
									</div>
									<div class="form-group">
										<label for="cardNumber">
											<h6>Card number</h6>
										</label>
										<div class="input-group">
											<input type="number" name="cardNumber"
												placeholder="Valid card number" class="form-control "
												required>
											<div class="input-group-append">
												<span class="input-group-text text-muted"> <i
													class="fa fa-cc-visa mx-1 my-1" style="color:blue;"></i> <i
													class="fa fa-cc-mastercard mx-1 my-1" style="color:red;"></i> <i
													class="fa fa-cc-amex mx-1 my-1"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-8">
											<div class="form-group">
												<label><span class="hidden-xs">
														<h6>Expiration Date</h6>
												</span></label>
												<div class="input-group">
													<input type="number" placeholder="MM" name="month"
														class="form-control" required> <input
														type="number" placeholder="YY" name="year"
														class="form-control" required>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group mb-4">
												<label data-toggle="tooltip"
													title="Three digit CV code on the back of your card">
													<h6>
														CVV <i class="fa fa-question-circle d-inline"></i>
													</h6>
												</label> <input type="number" required class="form-control" name="cvv">
											</div>
										</div>
									</div>
									<div class="card-footer">
										<input type="submit"
											class="subscribe btn btn-primary btn-block shadow-sm" value="Pay Rs.${product.price}">
											
								</form>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
</body>
</html>