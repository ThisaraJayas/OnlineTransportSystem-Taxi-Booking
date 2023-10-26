<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/HomeContent.css">
<link rel="stylesheet" href="./CSS/Home1.css">
<link rel="stylesheet" href="./CSS/Feedback.css">
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
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String feedback = request.getParameter("Feedback");
	%>
		<p>.</p>
		<h1>Submit your Feedback!</h1>
		<div class="feedbackBox">
		<form action="FeedbackUpdat" method ="post" >
		<h3>Send us your feedback!</h3><br>
		<label>Name</label><br>
		<input type="hidden" name="id" value=<%= id%>>
		<input type="text" name ="name" class="textsec" value="<%= name %>"><br>
		<label>Email</label><br>
		<input type="text" name ="email" class="textsec" value="<%= email %>"><br>
		<label>Contact</label><br>
		<input type="text" name="contact" class="textsec" value="<%= contact %>"><br>
		<label>Feedback</label><br>
		<textarea name="feedback" rows="4" cols="50" ><%= feedback %></textarea><br>
		<input type="submit" class="feedbackbtn" name ="submit" value="SUBMIT">
	    </form>
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