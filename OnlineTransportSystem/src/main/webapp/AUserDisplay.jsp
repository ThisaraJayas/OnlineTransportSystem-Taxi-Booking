<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.UserDB" %>
   <%@ page import="com.user.User" %>
   <%@ page import="java.util.List" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/Home1.css">
<link rel="stylesheet" href="./CSS/AUserDisplay.css">
<script src="https://kit.fontawesome.com/53815cae42.js" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6ee82bc81c.js" crossorigin="anonymous"></script>
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
	<%
	List<User> user1 = UserDB.getUser();
	request.setAttribute("user",user1);
	
	%>
			<div class="table">
		<table style="border: 1px solid black;">
			<tr>
				<th>ID</th>
				<th>Usename</th>
				<th>Email</th>
				<th>Contact</th>
				<th>Password</th>
				<th>Operators</th>
			</tr>
			<c:forEach var="data" items="${user}">
			<tr>
			<td>${data.getUserid()}</td>
		    <td>${data.getUserName()}</td>
		    <td>${data.getEmail()}</td>
		    <td>${data.getContact()}</td>
		    <td>${data.getPassword()}</td>
		    <td>
		    
		    <c:url value="AUserUpdate.jsp" var="userUpdate">
		    	<c:param name="id" value="${data.getUserid()}"></c:param>
		    	<c:param name="username" value="${data.getUserName()}"></c:param>
		    	<c:param name="email" value="${data.getEmail()}"></c:param>
		    	<c:param name="contact" value="${data.getContact()}"></c:param>
		    	<c:param name="password" value="${data.getPassword()}"></c:param>
		    </c:url>
		    	<a href="${userUpdate}">
		    		<input type="button" name="update" class="operatorbtn" value="Update">
		    	</a>
		    	
		    	
				<c:url value="UserDelete.jsp" var="userDelete">
		    	<c:param name="id" value="${data.getUserid()}"></c:param>
		   		</c:url>
		    	<a href="${userDelete}">
		    		<input type="button" name="delete" class="operatorbtn" value="Delete">
		    	</a>
		    	
		    </td>
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
</body>
</html>tml>