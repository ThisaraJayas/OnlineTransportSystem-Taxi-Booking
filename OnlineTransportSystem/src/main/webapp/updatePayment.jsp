<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./CSS/paymentform.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<meta charset="ISO-8859-1">
<title>Update Payment Details</title>
</head>
<body>


	<% 
		String id = request.getParameter("id");
		String method = request.getParameter("method");
		String name = request.getParameter("name");
		String cardno = request.getParameter("cardno");
		String exp = request.getParameter("exp");	
		String cvc = request.getParameter("cvc");		
	%>

	<div class="container p-0">
        <div class="card px-4">
            <p class="h8 py-3">Update Payment Details</p>
            <form action="updatePaymentServlet" method = "post">
            <div class="row gx-3">
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Payment ID</p>
                        <input class="form-control mb-3 pt-2 " type="text" name="id"  Value="<%= id%>" readonly>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Payment Method</p>
                        <input class="form-control mb-3" type="text"  name="method" Value="<%= method%>" required>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Person Name</p>
                        <input class="form-control mb-3" type="text" name="name" Value="<%= name%>" required>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input class="form-control mb-3" type="text" name="cardnumber" Value="<%= cardno%>" required>
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input class="form-control mb-3" type="text" name="exp" Value="<%= exp%>" required>
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input class="form-control mb-3 pt-2 " type="password" name="cvc" Value="<%= cvc%>" required>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
					<input type="submit" class='btn btn-primary mb-3' name="submit" value="Save">
					</div>
                </div>
            </div>
          </form>
        </div>
    </div>

</body>
</html>