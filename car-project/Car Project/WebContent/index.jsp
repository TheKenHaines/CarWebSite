<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<title>Ken's Cars</title>
</head>

<body>
	<!-- Main navigation -->
	
		<!--Navbar-->
		<nav
			class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
			<!--           <div class="container"> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent-7"
				aria-controls="navbarSupportedContent-7" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent-7">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link text-primary"
						href="index.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-primary" href="LogIn.jsp">Log
							In</a></li>
					<li class="nav-item"><a class="nav-link text-primary" href="Sign Up.jsp">Sign
							Up</a></li>
					<li class="nav-item"><a class="nav-link text-primary" href="inventoryServlet"
						text>Inventory</a></li>
					<li class="nav-item"><a class="nav-link text-primary" href="Admin.jsp">Admin</a></li>
				</ul>
				<form class="form-inline">
					<div class="md-form my-0">
						<input class="form-control mr-sm-2" type="text"
							placeholder="Search" aria-label="Search">
					</div>
				</form>
			</div>
	
		</nav>
		<!-- Full Page Intro -->
		<div class="view"
			style="background-image: url('https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_960_720.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
			<!-- Mask & flexbox options-->
			<div class="mask rgba-gradient align-items-center">
				<!-- Content -->
				<div class="container">
					<!--Grid row-->
					<div class="row">
						<!--Grid column-->
						<div
							class="col-md-6 white-text text-center text-md-left mt-xl-5 mb-5 wow fadeInLeft"
							data-wow-delay="0.3s">
							<h1 class="h1-responsive font-weight-bold mt-sm-5">Ken's
								Cars: The Convertible of Car Web Sites</h1>
							<hr class="hr-light">
							<h6 class="mb-4">A one stop shop for car buying and selling</h6>
						</div>
						<!--Grid column-->
						<!--Grid column-->

						<!--Grid column-->
					</div>
					<!--Grid row-->
				</div>
				<!-- Content -->
			</div>
			<!-- Mask & flexbox options-->
		</div>
		<!-- Full Page Intro -->
	<!-- Main navigation -->
	<!--Main Layout-->
	<main>
		<div class="container">
			<!--Grid row-->
			<div class="row py-5">
				<!--Grid column-->
				<div class="col-md-12 text-center">
					<p>This web site is designed to enhance the car buying and selling
						experience. You will need to log in to purchase vehicles. All
						rights reserved</p>
				</div>
				<!--Grid column-->
			</div>
			<!--Grid row-->
		</div>
	</main>
	<!--Main Layout-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>
</html>