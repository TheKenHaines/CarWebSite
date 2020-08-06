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
	background: rgb(40,33,158);
background: linear-gradient(90deg, rgba(40,33,158,0.8015581232492998) 0%, rgba(0,212,255,1) 100%);
}

nav {
	background-color: #234387;
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
					href="addNewCar.jsp">Add Car</a></li>
				<li class="nav-item"><a class="nav-link text-primary"
					href="salesServlet">Sales Report</a></li>
				<li class="nav-item"><a class="nav-link text-primary"
					href="inventoryServlet" text>Inventory</a></li>
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
	<!-- weather widget start --><div id="m-booked-small-t1-14528"> <div class="booked-weather-120x100 w100-bg" style="background-color:#FFFFFF; color:#333333; border-radius:4px; -moz-border-radius:4px; width:118px !important;"> <a target="_blank" style="background-color:#2373CA; color:#FFFFFF;" href="https://www.booked.net/weather/chesterfield-5345" class="booked-weather-120x100-city smolest">Chesterfield</a> <a target="_blank" class="booked-weather-120x100-bottom" href="https://www.booked.net/"><img src="//s.bookcdn.com/images/letter/s5.gif" alt="booked.net" /></a> <div class="booked-weather-120x100-degree w01"><span class="plus">+</span>17&deg;<sub class="booked-weather-120x100-type">C</sub></div> <div class="booked-weather-120x100-high-low"> <p>High: <span class="plus">+</span>17&deg;</p> <p>Low: <span class="plus">+</span>16&deg;</p> </div> <div style="background-color:#FFFFFF; color:#333333;" class="booked-weather-120x100-date">Tue, 04.08.2020</div> </div> </div><script type="text/javascript"> var css_file=document.createElement("link"); css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href",'https://s.bookcdn.com/css/w/bw-120-100.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData(data) { if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-small-t1-14528'); if(objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } </script> <script type="text/javascript" charset="UTF-8" src="https://widgets.booked.net/weather/info?action=get_weather_info&ver=6&cityID=5345&type=11&scode=124&domid=w209&anc_id=30016&cmetric=1&wlangID=1&color=ffffff&wwidth=118&header_color=2373ca&text_color=333333&link_color=ffffff&border_form=0&footer_color=ffffff&footer_text_color=333333&transparent=0"></script><!-- weather widget end -->


	<br>
	<br>
	
	<p>
	<h1>Welcome To Admin Page</h1></p>

</body>
</html>