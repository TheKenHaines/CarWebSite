<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
nav {
	background-color: #234387;
}

body {
	background: rgb(40,33,158);
background: linear-gradient(90deg, rgba(40,33,158,0.8015581232492998) 0%, rgba(0,212,255,1) 100%);
}

</style>
<title>Ken's Cars Inventory</title>

</head>
<body>
	<header>
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
					<li class="nav-item"><a class="nav-link text-primary"
						href="LogIn.jsp">Log In</a></li>
					<li class="nav-item"><a class="nav-link text-primary"
						href="Sign Up.jsp">Sign Up</a></li>
					<li class="nav-item"><a class="nav-link text-primary"
						href="Inventory.jsp">Inventory</a></li>
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
	</header>
	<div class="container">
	<br>
	<br>
	<br>


	<div class="row">
		<c:if test="${cars != null}">

			<c:forEach var="car" items="${cars}">

				<div class="card bg-light border-dark" style="width: 20rem;">
					<img src="<c:out value="${car.picturePath}  "/>"
						class="card-img-top" height = "200px" alt="Car Photo">
					<div class="card-body">
						<h5 class="card-title">
							<c:out value="${car.year} " />
							<c:out value="${car.make} " />
							<c:out value="${car.model}  " />
						</h5>
						<p class="card-text">
							<c:out value="${car.description} " />
						</p>
						<a href="DisplayInfo?vin=${car.vinNum}" class="btn btn-primary">Learn More</a>
					</div>
				</div>
				
			
				

			</c:forEach>
		</c:if>
	</div>
	<br>
	</div>

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