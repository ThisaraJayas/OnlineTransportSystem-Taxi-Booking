<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/Home1.css">
<link rel="stylesheet" href="./CSS/VehicleBooking.css">
<script src="https://kit.fontawesome.com/53815cae42.js" crossorigin="anonymous"></script>
<title>RideMate</title>
</head>
<body>
<nav>
		<input type="checkbox" id="check">
		<label for="check" class="checkbtn">
			<i class="fa-solid fa-bars"></i>
		</label>
		<a href="Home.jsp"><label class="logo">RideMate</label></a>
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="VehicleBookingPage.jsp">Schedule</a></li>
			<li><a href="VehicleDisplay.jsp">Book-Now</a></li>
			<li><a href="#">Contact</a></li>
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
	<div class="headbox">
		<p>Simplify your travel plans. Find out more about <a href="#">reserving a ride</a></p>
	</div>
	<div class="maincontent">
	<div class="bimage">
		<img src="./images/car1.png" class="bookingImage">
	</div>
	<div class="bookingsection">
		<h2>Looking for a Vehicle?<br> the Right Place. </h2>
		<form method="post" action="BookingInsrt">
		<div class="group1">
			<p class="text1">Pick up & Return location</p>
			<input type="text" name="location" class="locationsearch" placeholder="Location"><br>
			<p class="text1">Pick up date & time</p>
			<input type="date" class="calender" name="pickupDate">
			<select class="timedrop" name="pickupTime">
				<option>12 AM</option>
						<option>01 AM</option>
						<option>02 AM</option>
						<option>03 AM</option>
						<option>04 AM</option>
						<option>05 AM</option>
						<option>06 AM</option>
						<option>07 AM</option>
						<option>08 AM</option>
						<option>09 AM</option>
						<option>10 AM</option>
						<option>11 AM</option>
						<option>12 PM</option>
						<option>01 PM</option>
						<option>02 PM</option>
						<option>03 PM</option>
						<option>04 PM</option>
						<option>05 PM</option>
						<option>06 PM</option>
						<option>07 PM</option>
						<option>08 PM</option>
						<option>09 PM</option>
						<option>10 PM</option>
						<option>11 PM</option>
			</select>
			<p class="text1">Drop-off date & time</p>
			<input type="date" class="calender" name="returnDate">
			<select class="timedrop" name="returnTime">
				<option>12 AM</option>
						<option>01 AM</option>
						<option>02 AM</option>
						<option>03 AM</option>
						<option>04 AM</option>
						<option>05 AM</option>
						<option>06 AM</option>
						<option>07 AM</option>
						<option>08 AM</option>
						<option>09 AM</option>
						<option>10 AM</option>
						<option>11 AM</option>
						<option>12 PM</option>
						<option>01 PM</option>
						<option>02 PM</option>
						<option>03 PM</option>
						<option>04 PM</option>
						<option>05 PM</option>
						<option>06 PM</option>
						<option>07 PM</option>
						<option>08 PM</option>
						<option>09 PM</option>
						<option>10 PM</option>
						<option>11 PM</option>
			</select>
			<br><br>
			<input type="submit" class="vehiclesearch">
		</div>
		</form>
		</div>
		</div>
	</main>
	<footer>
		<div class="footerheading">
		<br>
			<h2>RideMate</h2>
		</div>
		<div class="content">
		<div class="services">
		<h4>Services</h4>
			<p><a href="#">Real-Time Tracking</a></p>
			<p><a href="#">Customer Support</a></p>
			<p><a href="#">Secure Payments</a></p>
			<p><a href="#">Emergency Services</a></p>
		</div>
		<div class="socialMedia">
		<h4>Social Media</h4>
			<p><a href="#"><i class="fab fa-linkedin"></i> Linkedin</a></p>
			<p><a href="#"><i class="fab fa-twitter"></i> Twitter</a></p>
			<p><a href="#"><i class="fab fa-instagram"></i> Instagram</a></p>
			<p><a href="#"><i class="fab fa-facebook"></i> Facebook</a></p>
		</div>
		<div class="about">
			<h4>About Us</h4>
			<p>Address:<br>RideMate Lanka,<br>No. 38, Kothalawala Avenue,<br>Colombo 5</p>
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