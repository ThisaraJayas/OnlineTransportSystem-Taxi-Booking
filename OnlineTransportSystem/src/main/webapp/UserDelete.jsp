<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/DeleteConfirm.css">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./CSS/Home.css">
<link rel="stylesheet" href="./CSS/Home1.css">
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
	%>
	<div class="deletecard">
	<p>.</p>
		<form action="UserDelet" method="post">
			<h3>Confirm Delete <input type="hidden" class="text"  name="id" value=<%= id %> readonly></h3><br>
			<input type="submit" value="Delete" class="deletebtn">
		</form>
			<a href="AUserDisplay.jsp"><input type="submit" value="Cancel" class="deletebtn"></a>
	</div>
</body>
</html>