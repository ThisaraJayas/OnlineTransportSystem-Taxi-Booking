<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@ page import="com.driverVehicle.DriverVehicle" %>
   <%@ page import="com.user.User" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/Home1.css">
<link rel="stylesheet" href="./CSS/HomeContent.css">
<script src="https://kit.fontawesome.com/53815cae42.js" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6ee82bc81c.js" crossorigin="anonymous"></script>
<title>RideMate</title>
</head>
<body>

	<nav>
		<input type="checkbox" id="check"> <label for="check"
			class="checkbtn"> <i class="fa-solid fa-bars"></i>
		</label> <a href="Home.jsp"><label class="logo">RideMate</label></a>
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="VehicleBookingPage.jsp">Schedule</a></li>
			<li><a href="VehicleDisplay.jsp">Book-Now</a></li>
			<li><a href="AUserDisplay.jsp">Contact</a></li>
			<%
			User user = (User) session.getAttribute("user");
			if (user != null) {
				String uname = user.getUserName();
			%>
			<li><a href="#" class="control1">Hi. <%= uname%></a></li>
			<li><form action="UserLogout" method="get"><button type="submit" class="control">Logout</button></form></li>
			
			<%
			} else {
			%>
			<li><a href="UserRegister.jsp" class="control">Register</a></li>
			<li><a href="UserLogin.jsp" class="control">Login</a></li>
			<%
			}
			%>

		</ul>
	</nav>
	<main>
		<div class="banner">

			<div class="content1">
				<h1>
					Lets Book Taxi For <br> Your Ride
				</h1>
				<br>
				<p>
					Are you tired of the never-ending struggle to book a cab online,
					Look no further! <br>EaseMyTrip is here to provide all your
					cab booking needs.
				</p>
				<br>
				<br>
				<div class="buttons">
					<a href="VehicleBookingPage.jsp"><button class="btn">Schedule</button></a>
					<a href="Feedback.jsp"><button class="btn">Feedback</button></a>
				</div>
			</div>
		</div>
		<div class="serviceTitle">
			<h2>REASONS TO CHOOSE US</h2>
		</div>
		<div class="rideabout">
			<div class="secOne">
				<img src="./images/icon1.png" class="bookingImage">
			</div>
			<div class="secTwo">
				<h2>Online Booking</h2>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					form for your website
				</p>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					through contact
				</p>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					Available 24/7
				</p>
			</div>
		</div>
		<div class="rideabout2">

			<div class="secTwo2">
				<h2>Online Booking</h2>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					form for your website
				</p>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					through contact
				</p>
				<p>
					<i class="fa-solid fa-check" style="color: #ffff0f;"></i> Booking
					Available 24/7
				</p>
			</div>
			<div class="secOne2">
				<img src="./images/icon1.png" class="bookingImage">
			</div>
		</div>
		<br> <br> <br> <br>
	</main>
	<footer>
		<div class="footerheading">
			<br>
			<h2>RideMate</h2>
		</div>
		<div class="content">
			<div class="services">
				<h4>Services</h4>
				<p>
					<a href="#">Real-Time Tracking</a>
				</p>
				<p>
					<a href="#">Customer Support</a>
				</p>
				<p>
					<a href="#">Secure Payments</a>
				</p>
				<p>
					<a href="#">Emergency Services</a>
				</p>
			</div>
			<div class="socialMedia">
				<h4>Social Media</h4>
				<p>
					<a href="#"><i class="fab fa-linkedin"></i> Linkedin</a>
				</p>
				<p>
					<a href="#"><i class="fab fa-twitter"></i> Twitter</a>
				</p>
				<p>
					<a href="#"><i class="fab fa-instagram"></i> Instagram</a>
				</p>
				<p>
					<a href="#"><i class="fab fa-facebook"></i> Facebook</a>
				</p>
			</div>
			<div class="about">
				<h4>About Us</h4>
				<p>
					Address:<br>RideMate Lanka,<br>No. 38, Kothalawala
					Avenue,<br>Colombo 5
				</p>
				<p>Contact: 011-2539-456</p>

			</div>
		</div>
		</div>
	</footer>
	<footer class="copyright">
		<hr />
		© 2023 RideMateLimited Co.
	</footer>
</body>
</html>