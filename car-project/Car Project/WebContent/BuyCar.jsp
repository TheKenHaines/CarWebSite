<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

    <title>Buy Car</title>
    <style>
    nav {
	background-color: #234387;
}

body {
	background: rgb(40, 33, 158);
	background: linear-gradient(90deg, rgba(40, 33, 158, 0.8015581232492998)
		0%, rgba(0, 212, 255, 1) 100%);
}


</style>
  </head>
  <body>
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
					href="inventoryServlet" text>Inventory</a></li>
				<li class="nav-item"><a class="nav-link text-primary"
					href="Admin.jsp">Admin</a></li>
			</ul>
			<form class="form-inline">
				<div class="md-form my-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" aria-label="Search">
				</div>
			</form>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<div class="container">
	<div class="row">
	<div class="col-md-8">
	<form action="BuyCar" method="post">
  <div class="form-group text-dark font-weight-bold">
    <label for="firstName">First Name</label>
    <input type="text" class="form-control" name ="firstName">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="firstName">Last Name</label>
    <input type="text" class="form-control" name ="lastName">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="creditCard">Credit Card Number</label>
    <input type="text" class="form-control" name ="creditNum">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="exp">Expiration Date</label>
    <input type="text" class="form-control" name ="creditExp">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="address">Address Street</label>
    <input type="text" class="form-control" name ="street">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="city">City</label>
    <input type="text" class="form-control" name ="city">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="state">State</label>
    <input type="text" class="form-control" name ="state">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="zip">Zip</label>
    <input type="text" class="form-control" name ="zip">
  </div>
  <div class="form-group text-dark font-weight-bold">
    <label for="vin">VIN</label>
    <input type="hidden" class="form-control" name ="vin" value ="${car.vinNum }">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
	</div>
	<div class="col-md-4">
	<br>
	<br>
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
						
					</div>
					
				</div>
				
				<br>
				<h1> All Sales Are Final<h1>
				<h4>Ken's Cars All Rights Reserved</h4>
				
				</div>
				</div>
	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
  </body>
</html>