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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	background-color: #234387;
}

nav {
	background-color: #234387;
}

/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>
<title>Ken's Cars Sign Up</title>
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
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">Add Car To Inventory</h4>

			<p class="divider-text"></p>
			<form action="addCar" method="post">
				
				<!-- Material checked -->
				<!-- Material checked -->
				Used
				<label class="switch"> <input type="checkbox" name = "isNew" value="true"> <span
					class="slider round"></span>
				</label> New
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="make" placeholder="Make"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="model" placeholder="Model"
						type="text">
				</div>
				<div class="form-group input-group">
					<input type="number" min="1900" max="2099" step="1" name="year"
						placeHolder="Year" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="color" placeholder="Color"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="milesRan"
						placeholder="Miles On Car" type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="price" placeholder="Price $"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="picturePath"
						placeholder="Picture Path" type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend"></div>
					<input class="form-control" name="VIN" placeholder="VIN"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<textarea name="desc" rows="4" cols="50" placeholder="Description"></textarea>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">
						Enter Car Into Inventory</button>
				</div>

			</form>
		</article>
	</div>
	<!-- card.// -->
</body>
</html>