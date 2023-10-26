<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./CSS/paymentform.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<meta charset="ISO-8859-1">
<title>Add Payment</title>
</head>
<body>
<div class="container p-0">
        <div class="card px-4">
            <p class="h8 py-3">Payment Details</p>
            <form action="addPaymentServlet" method = "post">
            <div class="row gx-3">
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Payment Method</p>
                        <input class="form-control mb-3" type="text"  name="method" placeholder="Visa / Master" required>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Person Name</p>
                        <input class="form-control mb-3" type="text" name="name" placeholder="Name" required>
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input class="form-control mb-3" type="text" name="cardnumber" placeholder="1234 5678 435678">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input class="form-control mb-3" type="text" name="exp" placeholder="MM/YYYY">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input class="form-control mb-3 pt-2 " type="password" name="cvc" placeholder="***">
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
					<input type="submit" class='btn btn-primary mb-3' name="submit" value="Add Payment Details">
					</div>
                </div>
            </div>
          </form>
        </div>
    </div>
</body>
</html>