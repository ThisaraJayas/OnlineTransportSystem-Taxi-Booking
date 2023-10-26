<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="assests/css/1adminlogin.css">
	<link rel="stylesheet" href="assests/css/Header.css">
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
<body>
	<% 
		String id = request.getParameter("id");	
	%>
	
	<div class="container">
		<h1>Delete Payment</h1>
		<div class="form flex-center">
			<form action="deletePayment" method="post">
				Do you want delete payment ?
				<input type="text" name="id"  Value="<%= id%>" readonly><br>
				<input type="submit" name="submit" value="Yes">
			</form>
			<form action="viewPayments" method="post">
				<input type="submit" value="No">
			</form>
		</div>
	</div>

</body>
</html>