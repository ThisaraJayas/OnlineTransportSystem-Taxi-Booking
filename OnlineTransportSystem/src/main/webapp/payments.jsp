<%@page import="payment.Payment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="./CSS/1adminlogin.css">
	<link rel="stylesheet" href="./CSS/Header.css">
	<link rel="stylesheet" href="./CSS/Payments.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./CSS/Home.css">
	<link rel="stylesheet" href="./CSS/HomeContent.css">
	<script src="https://kit.fontawesome.com/53815cae42.js" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/6ee82bc81c.js" crossorigin="anonymous"></script>
    <title>Payment List</title>
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
			<li><a href="UserRegister.jsp" class="control">Register</a></li>
			<li><a href="UserLogin.jsp" class="control">Login</a></li>
		</ul>
	</nav>
	<main>
   <br>
     <h1>Payment List</h1>
	    <table border="1" >
	        <thead>
		        <tr>
		            <th>Payment ID</th>
		            <th>Payment Method</th>
		            <th>Name</th>
		            <th>Card Number</th>
		            <th>Expiration Date</th>
		            <th>CVC</th>
		            <th>Actions</th>
		        </tr>
		        
	        </thead>
	        <tbody>
		        <c:forEach items="${payment}" var="pay">
		            <tr>
		                <td>${pay.id}</td>
		                <td>${pay.method}</td>
		                <td>${pay.name}</td>
		                <td>${pay.cardno}</td>
		                <td>${pay.exp}</td>
		                <td>${pay.cvc}</td>
		                <td>
			                <c:url value = "updatePayment.jsp" var = "updpay">
								<c:param name="id" value = "${pay.id}"/>
								<c:param name="method" value = "${pay.method}"/>
								<c:param name="name" value = "${pay.name}"/>
								<c:param name="cardno" value = "${pay.cardno}"/>
								<c:param name="exp" value = "${pay.exp}"/>
								<c:param name="cvc" value = "${pay.cvc}"/>
							</c:url>
							<a href="${updpay}">
								<input type="submit" name="update" value="Update">
							</a>
							
							<c:url value = "deletePayment.jsp" var = "delpay">
								<c:param name="id" value = "${pay.id}"/>
							</c:url>
							<a href="${delpay}">
								<input type="button" name="update" value="Delete">
							</a> 
		                </td>
		            </tr>
		        </c:forEach>
        	</tbody>
	    </table>
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
