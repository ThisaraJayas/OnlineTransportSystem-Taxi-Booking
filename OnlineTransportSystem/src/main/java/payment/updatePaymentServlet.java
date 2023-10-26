package payment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import payment.Payment;
import payment.PaymentDBUtil;


public class updatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id =  Integer.parseInt(request.getParameter("id"));
		String method =  request.getParameter("method");
		String name =  request.getParameter("name");
		String cardno =  request.getParameter("cardnumber");
		String exp =  request.getParameter("exp");
		int cvc =  Integer.parseInt(request.getParameter("cvc"));
		
		boolean isTrue = PaymentDBUtil.updatePayment(id, method, name, cardno, exp, cvc);
		
		if(isTrue == true){
			RequestDispatcher dis = request.getRequestDispatcher("/viewPayments");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("/viewPayments");
			dis.forward(request, response);
		}
	}

}
