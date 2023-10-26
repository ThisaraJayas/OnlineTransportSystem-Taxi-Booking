package payment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import payment.PaymentDBUtil;


public class deletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =  request.getParameter("id");
		
		boolean isTrue = PaymentDBUtil.deletePayment(id);
				
		if(isTrue == true){

			RequestDispatcher dis = request.getRequestDispatcher("/viewPayments");
			dis.forward(request, response);
			
		}else {
			response.sendRedirect("Home.jsp");
		}
		
		
	}

}
