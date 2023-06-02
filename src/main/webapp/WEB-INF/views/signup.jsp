<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
	<link href="resources/css/style1.css" rel="stylesheet">

<title>Register | SoftLib</title>
</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 col-lg-5">
					<div class="wrap border border-dark">
						<div class="img" style="background-image: url(https://t3.ftcdn.net/jpg/03/99/24/82/360_F_399248286_Ogm0T8CFeauN4Hdn42FqWfsCE02dJBbX.jpg);"></div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign Up</h3>
			      		</div>
								
			      	</div>
							<form  action="registeruser" class="signin-form" method="post">
						<div class="form-group mt-3">
			      			<input type="text" class="form-control" name="username" required>
			      			<label class="form-control-placeholder" for="username">Name</label>
			      		</div>
			      		<div class="form-group mt-4">
			      			<input type="email" class="form-control" name="email" required>
			      			<label class="form-control-placeholder" for="username">Email</label>
			      		</div>
			      		<div class="form-group mt-4">
			      			<input type="text" class="form-control" name="number" pattern="[0-9]{10}" maxlength="10" maxlength="10" required>
			      			<label class="form-control-placeholder" for="username">Mobile Number</label>
			      		</div>
			      		<div class="form-group mt-4">
			      			<input type="password" class="form-control" name="password1" required>
			      			<label class="form-control-placeholder" for="username">Password</label>
			      		</div>
			      		<div class="form-group mt-4">
			      			<input type="password" class="form-control" name="password2" required>
			      			<label class="form-control-placeholder" for="username">Confirm Password</label>
			      		</div>
		            
		            <div class="form-group">
		            	<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign Up</button>
		            </div>
		            
		          </form>
		          <p class="text-center">Already a user ? <a style="color:01d28e;" href="/Software">Sign in</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>