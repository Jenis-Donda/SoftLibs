<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.container {
	width: 100%;
	height: 100vh;
	/* background: #3c5077; */
	background: #dae7f1;
	display: flex;
	align-items: center;
	justify-content: center;
}

.btn {
	padding: 10px 60px;
	background: #fff;
	border: 0;
	outline: none;
	cursor: pointer;
	font-size: 22px;
	font-weight: 500;
	border-radius: 30px;
}

.popup {
	width: 400px;
	background: #fff;
	border-radius: 6px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	padding: 0 30px 30px;
	color: #333;
}

.popup img {
	width: 100px;
	margin-top: -50px;
	border-radius: 50%;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

.popup h2 {
	font-size: 38px;
	font-weight: 500;
	margin: 30px 0 10px;
}

.popup .button {
	width: 100%;
	margin-top: 50px;
	padding: 10px 0;
	background: #6fd649;
	border: 0;
	outline: none;
	font-size: 18px;
	border-radius: 4px;
	cursor: pointer;
	box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
	<div class="container">
		<button type="submit" class="btn">Submit</button>
		

		<div class="popup">
			<img src="/Software/resources/img/404-tick.png" alt="" srcset="">
			 
			<h2>Thank You!</h2>
			<p>Your Transaction has been successfully Completed.</p>
			<button href="" class="button"
				onclick="window.location='/Software/home'">Ok</button>
		</div>
	</div>
</body>
</html>