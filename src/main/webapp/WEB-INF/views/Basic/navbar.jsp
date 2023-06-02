<%@page isELIgnored = "false" %>	


<%
	HttpSession sess = request.getSession();
	String email = "unkown";
	String uname = "unkown";
	int id = 0;

	if (sess != null) {
		email = (String) sess.getAttribute("email");
		id = (Integer)sess.getAttribute("id");
	   uname = (String) sess.getAttribute("name");

	}
	%>
	
	
	
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<header id="header" class="fixed-top d-flex align-items-center">
	<div class="container d-flex align-items-center">

		<div class="logo me-auto">
			<h1>
				<a href="home">SoftLib</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>

		<nav id="navbar" class="navbar order-last order-lg-0">
			<ul>
				<li><a class="nav-link scrollto active" href="/Software/home">Home</a></li>
				<li><a class="nav-link scrollto" href="/Software/about">About us</a></li>
				<li><a class="nav-link scrollto" href="home#services">Services</a></li>
				<li><a class="nav-link scrollto" href="home#pricing">Categories</a></li>
				<li><a class="nav-link scrollto" href="/Software/contact">Contact</a></li>
				<li><a href="logout" class="nav-link scrollto" >Logout<i class="fa fa-sign-out" aria-hidden="true" style="font-size:22px;"></i></a></li>
				<li><a class="nav-link scrollto" href="edit/${id }"><%out.println("<b>" + uname + "</b>");%><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size:20px;"></i></a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

		<!--  <div class="header-social-links d-flex align-items-center">
			<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
				href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
				href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a
				href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
		</div>-->

	</div>
</header>