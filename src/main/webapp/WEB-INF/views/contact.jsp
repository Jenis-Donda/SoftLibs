<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

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
<body>

	<jsp:include page="Basic/navbar.jsp"></jsp:include>
	
	<section id="contact" class="contact section-bg">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Contact Us</h2>
				</div>

				<div class="row">

					<div class="col-lg-5 d-flex align-items-stretch"
						data-aos="fade-right">
						<div class="info">
							<div class="address">
								<i class="bi bi-geo-alt"></i>
								<h4>Location:</h4>
								<p>A108 Adam Street, New York, NY 535022</p>
							</div>

							<div class="email">
								<i class="bi bi-envelope"></i>
								<h4>Email:</h4>
								<p>info@example.com</p>
							</div>

							<div class="phone">
								<i class="bi bi-phone"></i>
								<h4>Call:</h4>
								<p>+1 5589 55488 55s</p>
							</div>

							<iframe
								src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"
								frameborder="0" style="border: 0; width: 100%; height: 290px;"
								allowfullscreen></iframe>
						</div>

					</div>

					<div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch"
						data-aos="fade-left">
						<form action="https://formspree.io/f/xnqldlgp" method="post" role="form"
							class="php-email-form">
							<div class="row">
								<div class="form-group col-md-6">
									<label for="name">Your Name</label> <input type="text"
										name="name" class="form-control" id="name" required>
								</div>
								<div class="form-group col-md-6 mt-3 mt-md-0">
									<label for="name">Your Email</label> <input type="email"
										class="form-control" name="email" id="email" required>
								</div>
							</div>
							<div class="form-group mt-3">
								<label for="name">Subject</label> <input type="text"
									class="form-control" name="subject" id="subject" required>
							</div>
							<div class="form-group mt-3">
								<label for="name">Message</label>
								<textarea class="form-control" name="message" rows="10" required></textarea>
							</div>
							<div class="my-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div class="text-center">
								<button type="submit">Send Message</button>
							</div>
						</form>
					</div>

				</div>

			</div>
		</section>
		<!-- End Contact Section -->
		
		<jsp:include page="Basic/footer.jsp"></jsp:include>
	    
</body>
<script src="resources/vendor/aos/aos.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
<script src="resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
<script src="resources/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="resources/js/main.js"></script>
</html>