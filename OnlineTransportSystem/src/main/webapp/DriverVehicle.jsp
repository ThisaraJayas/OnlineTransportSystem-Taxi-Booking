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
<script src="./javascript/DriverVehicleValidate.js"></script>
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
	<main>
	<%
	Driver driver = (Driver) session.getAttribute("driver");
				if(driver!=null){
					int driverid = driver.getDriverId();
					List<DriverVehicle> dv = DriverVehicleDB.getDriverVehicle(driverid);
					request.setAttribute("dvDetails", dv);
				}else{
					response.sendRedirect("DriverLogin.jsp");
				}
	%>
	<div class="box">
		<h1>Available Time</h1>
		<form action="DriverInsert" method="post" name="formdv">
			<div class="text-box">
				<label>Date</label><br>
				<input type="date" class="date" name="date" required>
			</div>
			<div class="text-box">
				<label>From</label><br>
					<select class="timedrop" name="timeFrom">
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
			</div>
			<div class="text-box">
				<label>To</label><br>
					<select class="timedrop" name="timeTo">
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
			</div>
			<div class="text-box">
				<label>Fair Price</label><br>
				<input type="text" name="fairPrice">
			</div>
			<div class="text-box">
				<label>Vehicle Type</label><br>
					<select class="timedrop" name="vehType">
						<option>Car</option>
						<option>TukTuk</option>
						<option>Van</option>
						<option>Motor Bike</option>
					</select>	
			</div>
			<div class="text-box">
				<label>Seat Count</label><br>
				<input type="text" name="seatCount">
			</div>
			<input type="submit" value="submit" onclick="return Validate();" class="addbtn">
		</form>
	</div>
	<div class="table">
		<table style="border: 1px solid black;">
			<tr>
				<th>ID</th>
				<th>Date</th>
				<th>Time From</th>
				<th>Time To</th>
				<th>Fair Price</th>
				<th>Vehicle Type</th>
				<th>Seat Count</th>
				<th>Operators</th>
			</tr>
			<c:forEach var="data" items="${dvDetails}">
			<tr>
	<td>${data.getId()}</td>
    <td>${data.getDate()}</td>
    <td>${data.getTimeFrom()}</td>
    <td>${data.getTimeTo()}</td>
    <td>${data.getFairPrice()}</td>
    <td>${data.getVehicleType()}</td>
    <td>${data.getSeatCount()}</td>
    <td>
    <c:url value="DriverVehicleUpdate.jsp" var="dvUpdate">
    	<c:param name="id" value="${data.getId()}"></c:param>
    	<c:param name="date" value="${data.getDate()}"></c:param>
    	<c:param name="timefrom" value="${data.getTimeFrom()}"></c:param>
    	<c:param name="timeto" value="${data.getTimeTo()}"></c:param>
    	<c:param name="fairprice" value="${data.getFairPrice()}"></c:param>
    	<c:param name="vehicletype" value="${data.getVehicleType()}"></c:param>
    	<c:param name="seatcount" value="${data.getSeatCount()}"></c:param>
    </c:url>
    <a href="${dvUpdate}">
		<input type="button" name="update" class="operatorbtn" value="Update">
	</a>
    <c:url value="DriverVehicleDelete.jsp" var="dvDelete">
    	<c:param name="id" value="${data.getId()}"></c:param>
    </c:url>
    <a href="${dvDelete}">
    	<input type="button" name="delete" class="operatorbtn" value="Delete">
    </a>
    
			</tr>
			</c:forEach>
		</table>
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