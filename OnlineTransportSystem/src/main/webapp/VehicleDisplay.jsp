<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>
   <%@ page import="com.user.User" %>
   <%@ page import="com.driverVehicle.DriverVehicleDB" %>
   <%@ page import="com.driverVehicle.DriverVehicle" %>
   <%@ page import="com.vehicleBooking.AvaVehicleRetriveDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/Home1.css">
<link rel="stylesheet" href="./CSS/DriverVehicle1.css">
<link rel="stylesheet" href="./CSS/VehicleDisplay1.css">
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
			<<li><a href="Home.jsp">Home</a></li>
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
	<%
	List<DriverVehicle> dv = AvaVehicleRetriveDB.getBooking();
	request.setAttribute("vehicle", dv);
	
	%>
	<c:forEach var="data" items="${vehicle}">
	
	
	<div class="vehiclecard">
	<div class="card">
		<div class="image">
		<c:choose>
                    <c:when test="${data.vehicleType eq 'Car'}">
                        <img src="./images/car1.png" class="bookingImage">
                    </c:when>
                    <c:when test="${data.vehicleType eq 'TukTuk'}">
                        <img src="./images/tuktuk.png" class="bookingImage">
                    </c:when>
                    <c:when test="${data.vehicleType eq 'Motor Bike'}">
                        <img src="./images/motorbike.jpg" class="bookingImage">
                    </c:when>
                    <c:when test="${data.vehicleType eq 'Van'}">
                        <img src="./images/van1.jpg" class="bookingImage">
                    </c:when>
        </c:choose>
			
		</div>
		<div class="textsection">
			<h2>${data.getVehicleType()}</h2>
			<h4>Seat Count  ${data.getSeatCount()}</h4>
			<h4>Available from ${data.getTimeFrom()} to ${data.getTimeTo()} </h4>
		</div>
		<div class="price">
			<h1>${data.getFairPrice()}</h1>
		</div>
		<div >
			<form action="addPayment.jsp" method="post">
    		<input type="submit" value="Book Ride" class="bookbtn">
			</form>
	    </div>
		
		</div>
	</div>
	</c:forEach>
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
        � 2023 RideMateLimited Co.
     </footer>
</body>
</html>