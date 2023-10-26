<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.List" %>
   <%@ page import="com.driverVehicle.DriverVehicleDB" %>
   <%@ page import="com.driverVehicle.DriverVehicle" %>
   <%@ page import="com.driver.Driver" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/DriverVehicle1.css">
<script src="https://kit.fontawesome.com/53815cae42.js" crossorigin="anonymous"></script>
<title>RideMate</title>
</head>
<body>
<nav>
		<input type="checkbox" id="check">
		<label for="check" class="checkbtn">
			<i class="fa-solid fa-bars"></i>
		</label>
		<a href="Home.jsp"><label class="logo">RideMate Driver</label></a>
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="VehicleBookingPage.jsp">Schedule</a></li>
			<li><a href="VehicleDisplay.jsp">Book-Now</a></li>
			<li><a href="#">Contact</a></li>
			<li><form action="Logout" method="get"><button type="submit" class="control">Logout</button></form></li>
			
		</ul>
	</nav>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String date = request.getParameter("date");
	String timefrom = request.getParameter("timefrom");
	String timeto = request.getParameter("timeto");
	String fairprice = request.getParameter("fairprice");
	String vehicletype = request.getParameter("vehicletype");
	String seatcount = request.getParameter("seatcount");
%>
<div class="box">
		<h1>Update Details</h1>
		<form action="DriverUpdate" method="post">
		<input type="hidden" name="id" value="<%= id %>">
			<div class="text-box">
				<label>Date</label><br>
				<input type="date" class="date" name="date" value=<%= date%>>
			</div>
			<div class="text-box">
				<label>From</label><br>
					<select class="timedrop" name="timeFrom" value=<%= timefrom %>>
						<option value="12 AM" <%= timefrom.equals("12 AM") ? "selected" : "" %>>12 AM</option>
						<option value="01 AM" <%= timefrom.equals("01 AM") ? "selected" : "" %>>01 AM</option>
						<option value="02 AM" <%= timefrom.equals("02 AM") ? "selected" : "" %>>02 AM</option>
						<option value="03 AM" <%= timefrom.equals("03 AM") ? "selected" : "" %>>03 AM</option>
						<option value="04 AM" <%= timefrom.equals("04 AM") ? "selected" : "" %>>04 AM</option>
						<option value="05 AM" <%= timefrom.equals("05 AM") ? "selected" : "" %>>05 AM</option>
						<option value="06 AM" <%= timefrom.equals("12 AM") ? "selected" : "" %>>06 AM</option>
						<option value="07 AM" <%= timefrom.equals("12 AM") ? "selected" : "" %>>07 AM</option>
						<option value="08 AM" <%= timefrom.equals("12 AM") ? "selected" : "" %>>08 AM</option>
						<option value="09 AM" <%= timefrom.equals("12 AM") ? "selected" : "" %>>09 AM</option>
						<option value="10 AM" <%= timefrom.equals("10 AM") ? "selected" : "" %>>10 AM</option>
						<option value="11 AM" <%= timefrom.equals("11 AM") ? "selected" : "" %>>11 AM</option>
						<option value="12 PM" <%= timefrom.equals("12 PM") ? "selected" : "" %>>12 PM</option>
						<option value="01 PM" <%= timefrom.equals("01 PM") ? "selected" : "" %>>01 PM</option>
						<option value="02 PM" <%= timefrom.equals("02 PM") ? "selected" : "" %>>02 PM</option>
						<option value="03 PM" <%= timefrom.equals("03 PM") ? "selected" : "" %>>03 PM</option>
						<option value="04 PM" <%= timefrom.equals("04 PM") ? "selected" : "" %>>04 PM</option>
						<option value="05 PM" <%= timefrom.equals("05 PM") ? "selected" : "" %>>05 PM</option>
						<option value="06 PM" <%= timefrom.equals("06 PM") ? "selected" : "" %>>06 PM</option>
						<option value="07 PM" <%= timefrom.equals("07 PM") ? "selected" : "" %>>07 PM</option>
						<option value="08 PM" <%= timefrom.equals("08 PM") ? "selected" : "" %>>08 PM</option>
						<option value="09 PM" <%= timefrom.equals("09 PM") ? "selected" : "" %>>09 PM</option>
						<option value="10 PM" <%= timefrom.equals("10 PM") ? "selected" : "" %>>10 PM</option>
						<option value="11 PM" <%= timefrom.equals("11 PM") ? "selected" : "" %>>11 PM</option>
					</select>
			</div>
			<div class="text-box">
				<label>To</label><br>
					<select class="timedrop" name="timeTo" value=<%= timeto %>>
						<option value="12 AM" <%= timeto.equals("12 AM") ? "selected" : "" %>>12 AM</option>
						<option value="01 AM" <%= timeto.equals("01 AM") ? "selected" : "" %>>01 AM</option>
						<option value="02 AM" <%= timeto.equals("02 AM") ? "selected" : "" %>>02 AM</option>
						<option value="03 AM" <%= timeto.equals("03 AM") ? "selected" : "" %>>03 AM</option>
						<option value="04 AM" <%= timeto.equals("04 AM") ? "selected" : "" %>>04 AM</option>
						<option value="05 AM" <%= timeto.equals("05 AM") ? "selected" : "" %>>05 AM</option>
						<option value="06 AM" <%= timeto.equals("12 AM") ? "selected" : "" %>>06 AM</option>
						<option value="07 AM" <%= timeto.equals("12 AM") ? "selected" : "" %>>07 AM</option>
						<option value="08 AM" <%= timeto.equals("12 AM") ? "selected" : "" %>>08 AM</option>
						<option value="09 AM" <%= timeto.equals("12 AM") ? "selected" : "" %>>09 AM</option>
						<option value="10 AM" <%= timeto.equals("10 AM") ? "selected" : "" %>>10 AM</option>
						<option value="11 AM" <%= timeto.equals("11 AM") ? "selected" : "" %>>11 AM</option>
						<option value="12 PM" <%= timeto.equals("12 PM") ? "selected" : "" %>>12 PM</option>
						<option value="01 PM" <%= timeto.equals("01 PM") ? "selected" : "" %>>01 PM</option>
						<option value="02 PM" <%= timeto.equals("02 PM") ? "selected" : "" %>>02 PM</option>
						<option value="03 PM" <%= timeto.equals("03 PM") ? "selected" : "" %>>03 PM</option>
						<option value="04 PM" <%= timeto.equals("04 PM") ? "selected" : "" %>>04 PM</option>
						<option value="05 PM" <%= timeto.equals("05 PM") ? "selected" : "" %>>05 PM</option>
						<option value="06 PM" <%= timeto.equals("06 PM") ? "selected" : "" %>>06 PM</option>
						<option value="07 PM" <%= timeto.equals("07 PM") ? "selected" : "" %>>07 PM</option>
						<option value="08 PM" <%= timeto.equals("08 PM") ? "selected" : "" %>>08 PM</option>
						<option value="09 PM" <%= timeto.equals("09 PM") ? "selected" : "" %>>09 PM</option>
						<option value="10 PM" <%= timeto.equals("10 PM") ? "selected" : "" %>>10 PM</option>
						<option value="11 PM" <%= timeto.equals("11 PM") ? "selected" : "" %>>11 PM</option>
					</select>
			</div>
			<div class="text-box">
				<label>Fair Price</label><br>
				<input type="text" name="fairPrice"  value=<%= fairprice %>>
			</div>
			<div class="text-box">
				<label>Vehicle Type</label><br>
					<select class="timedrop" name="vehType">
						<option value="Car" <%= vehicletype.equals("Car") ? "selected" : "" %>>Car</option>
					    <option value="TukTuk" <%= vehicletype.equals("TukTuk") ? "selected" : "" %>>TukTuk</option>
					    <option value="Van" <%= vehicletype.equals("Van") ? "selected" : "" %>>Van</option>
					    <option value="Motor Bike" <%= vehicletype.equals("Motor Bike") ? "selected" : "" %>>Motor Bike</option>
					</select>	
			</div>
			<div class="text-box">
				<label>Seat Count</label><br>
				<input type="text" name="seatCount" value=<%= seatcount %>>
			</div>
			<input type="submit" value="Update" class="addbtn">
		</form>
	</div>
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