package payment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class ViewPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		PaymentDBUtil.Validate();
		
		try {
		List<Payment> payment = PaymentDBUtil.Validate();
		request.setAttribute("payment", payment);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("payments.jsp");
		dis.forward(request, response);
	}

}
