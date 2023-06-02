<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>SoftLib | Home</title>
<meta content="" name="description">
<meta content="" name="keywords">


<link href="resources/img/softlib2.png" rel="icon">
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

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>

<body>

	<!-- ======= Header ======= -->
	<jsp:include page="Basic/navbar.jsp"></jsp:include>

	<!-- ======= Hero Section ======= -->

	<section id="hero">

		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center"
					data-aos="fade-up">
					<div>
						<h1>We design digital products that help grow businesses</h1>
						<h2></h2>
						<a href="#pricing" class="btn-get-started scrollto">Buy Now<i class="fa-solid fa-cart-shopping"></i></a>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img"
					data-aos="fade-left">
					<img src="resources/img/hero-img.png" class="img-fluid" alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Pricing Section ======= -->
		<section id="pricing" class="pricing section-bg">
			<div class="container">
				<div class="section-title" data-aos="fade-up">
					<h2>Categories</h2>
					<p>Software is the greate combination between artistry and
						engineering.</p>
				</div>
				<div class="card-group">
					<div class="card mx-5 border border-primary">
						<h3 class="text-center">Investment</h3>
							<img alt=""
								src="https://t4.ftcdn.net/jpg/03/14/80/29/360_F_314802917_bokCMjUS5cbfgNNvQ7oChkBAYFtX3gJV.jpg"
								class= "card-img-top">
							<div class="btn-wrap">
								<a href="investment" class="btn-buy">Buy Now</a>
							</div>
					</div>
					<div class="card mx-5 border border-primary">
						<h3 class="text-center">Accounting</h3>
							<img alt=""
								src="https://t4.ftcdn.net/jpg/03/05/71/69/360_F_305716963_lKzrS1aUlecvMYw6uKGPcuAXfNvczIRa.jpg"
								class= "card-img-top">
							<div class="btn-wrap">
								<a href="accounting" class="btn-buy">Buy Now</a>
							</div>
					</div>
					<div class="card mx-5 border border-primary ">
						<h3 class="text-center">Budget</h3>
							<img alt=""
								src="https://seekvectorlogo.com/wp-content/uploads/2018/01/budget-vector-logo.png"
								 style="height:200px; width:200px; margin:auto;">
							<div class="btn-wrap">
								<a href="budget" class="btn-buy">Buy Now</a>
							</div>
					</div>
				</div>
			</div>
		
		</section>

	</main>

	
	<!-- ======= Features Section ======= -->
	<section id="features" class="features">
		<div class="container">

			<div class="section-title text-dark" data-aos="zoom-in">
				<h2 class="text-dark">Features</h2>

			</div>

			<div class="row">
				<div class="col-lg-6 mt-2 mb-tg-0 order-2 order-lg-1">
					<ul class="nav nav-tabs flex-column">
						<li class="nav-item" data-aos="fade-up"><a
							class="nav-link active show" data-bs-toggle="tab" href="#tab-1">
								<h4>Various Softwares</h4>
								<p>In this website you can find many variety of softwares by
									it's category.</p>
						</a></li>
						<li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="100">
							<a class="nav-link" data-bs-toggle="tab" href="#tab-2">
								<h4>Information</h4>
								<p>You also see the all details about any particular
									software.</p>
						</a>
						</li>
						<li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="200">
							<a class="nav-link" data-bs-toggle="tab" href="#tab-3">
								<h4>Payment</h4>
								<p>You can pay money for softwares securely.</p>
						</a>
						</li>
						<li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="300">
							<a class="nav-link" data-bs-toggle="tab" href="#tab-4">
								<h4>Contact</h4>
								<p>If any issue you facing while buying a software you can
									contact us.</p>
						</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in">
					<div class="tab-content">
						<div class="tab-pane active show" id="tab-1">
							<figure>
								<img src="resources/img/features-1.png" alt="" class="img-fluid">
							</figure>
						</div>
						<div class="tab-pane" id="tab-2">
							<figure>
								<img src="resources/img/features-2.png" alt="" class="img-fluid">
							</figure>
						</div>
						<div class="tab-pane" id="tab-3">
							<figure>
								<img src="resources/img/features-3.png" alt="" class="img-fluid">
							</figure>
						</div>
						<div class="tab-pane" id="tab-4">
							<figure>
								<img src="resources/img/features-4.png" alt="" class="img-fluid">
							</figure>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- End Features Section -->

	<!-- ======= Services Section ======= -->
	<section id="services" class="services section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>Services</h2>
				<p>Web services are self-contained, modular, distributed,
					dynamic applications that can be described, published, located, or
					invoked over the network to create products, processes, and supply
					chains.</p>
			</div>

			<div class="row d-flex justify-content-center">
				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
					data-aos="zoom-in">
					<div class="icon-box icon-box-pink">
						<div class="icon">
							<i class="bx bxl-dribbble"></i>
						</div>
						<h4 class="title">
							<a href="">Web Design</a>
						</h4>
						<p class="description">We have very talented team for web
							designing.so you can approach us.</p>
					</div>
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
					data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box icon-box-cyan">
						<div class="icon">
							<i class="bx bx-file"></i>
						</div>
						<h4 class="title">
							<a href="">Product Management</a>
						</h4>
						<p class="description">Product management is the process
							within the organization that enables the capability of various
							phases of product development, planning, product release in the
							market.</p>
					</div>
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
					data-aos="zoom-in" data-aos-delay="300">
					<div class="icon-box icon-box-blue">
						<div class="icon">
							<i class="bx bx-world"></i>
						</div>
						<h4 class="title">
							<a href="">Marketing</a>
						</h4>
						<p class="description">Web marketing services use online
							channels, like search, social, and email, to help companies
							reach, nurture, and convert their target audience.</p>
					</div>
				</div>

			</div>

		</div>
	</section>


	<!-- ======= Cta Section ======= -->
	<section id="cta" class="cta">
		<div class="container">

			<div class="row" data-aos="zoom-in">
				<div class="col-lg-9 text-center text-lg-start">
					<h3>Call To Action</h3>
					<p>A Call to Action (CTA) on a website is an instruction to the
						visitor in order to encourage them to take some kind of action. A
						Call to Action might be simple instructional text, such as "call
						us now", "find out more", or "subscribe to our Newsletter".</p>
				</div>
				<div class="col-lg-3 cta-btn-container text-center">
					<a class="cta-btn align-middle" href="contact">Call To Action</a>
				</div>
			</div>

		</div>
	</section>
	<!-- End Cta Section -->
	<!-- ======= Testimonials Section ======= -->
	<section id="testimonials" class="testimonials">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>Testimonials</h2>
				<p>Like any other marketing device, customer testimonials serve
					as a form of affirmation for your products or services.</p>
			</div>

			<div class="testimonials-slider swiper" data-aos="fade-up"
				data-aos-delay="100">
				<div class="swiper-wrapper">

					<div class="swiper-slide">
						<div class="testimonial-item">
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i> It is a
								distinct pleasure for me to recommend Thrive Internet Marketing
								to any and all interested parties. They have been professional,
								comprehensive and competent throughout the process of our
								working together. We feel that we have established a
								relationship with them for years to come. <i
									class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
							<img src="resources/img/testimonials/testimonials-1.jpg"
								class="testimonial-img" alt="">
							<h3>Saul Goodman</h3>
							<h4>Ceo &amp; Founder</h4>
						</div>
					</div>
					<!-- End testimonial item -->
					<div class="swiper-slide">
						<div class="testimonial-item">
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i>We have
								worked with Softlib team Digital now for many years for our
								Magento development projects. We have found that many web
								developers will talk a good project, but most fail to back it
								up. In our early days we had changed from developer to
								developer, with each either being unresponsive to our requests
								in a timely manner. <i
									class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
							<img src="resources/img/testimonials/testimonials-2.jpg"
								class="testimonial-img" alt="">
							<h3>Sara Wilsson</h3>
							<h4>Designer</h4>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i> When we
								set out to rebuild all six of our websites into a WordPress with
								WooCommerce framework, we knew we would need a business partner
								that would be with us for the long haul. Ice Cube Digital has
								been there for us and continues to work with us every step of
								the way. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
							<img src="resources/img/testimonials/testimonials-3.jpg"
								class="testimonial-img" alt="">
							<h3>Jena Karlis</h3>
							<h4>Store Owner</h4>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i> Everyone
								was very helpful and responsive through the whole process. all
								team members assisted with any changes, big or small I wanted to
								make when designing my website. They also responded quickly
								after the fact when I ran into hiccups months later. <i
									class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
							<img src="resources/img/testimonials/testimonials-4.jpg"
								class="testimonial-img" alt="">
							<h3>Matt Brandon</h3>
							<h4>Freelancer</h4>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<p>
								<i class="bx bxs-quote-alt-left quote-icon-left"></i> had a
								great experience working with Softlib. They made my suggested
								changes quickly and first made sure I was happy before pushing
								any of the changes live to the site. I will continue to work
								with them. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
							<img src="resources/img/testimonials/testimonials-5.jpg"
								class="testimonial-img" alt="">
							<h3>John Larson</h3>
							<h4>Entrepreneur</h4>
						</div>
					</div>
					<!-- End testimonial item -->

				</div>
				<div class="swiper-pagination"></div>
			</div>

		</div>
	</section>
	<!-- End Testimonials Section -->

	</main>
	<!-- End #main -->

	<jsp:include page="Basic/footer.jsp"></jsp:include>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="resources/vendor/aos/aos.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/js/main.js"></script>
</body>

</html>