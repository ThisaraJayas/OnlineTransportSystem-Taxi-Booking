package payment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import payment.*;


public class addPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String method = request.getParameter("method");
		String name = request.getParameter("name");
		String cardnumber = request.getParameter("cardnumber");
		String exp = request.getParameter("exp");
		int cvc = Integer.parseInt(request.getParameter("cvc"));
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.addPayment(method, name, cardnumber, exp, cvc);
		
		if(isTrue == true){			
			RequestDispatcher dis = request.getRequestDispatcher("/viewPayments");
			dis.forward(request, response);
		}else {		
			out.println("<script type = 'text/javascript'>");
			out.println("alert('unsuccessful');");
			out.println("location='addPayment.jsp'");
			out.println("</script>");
		}
		
	}

}
