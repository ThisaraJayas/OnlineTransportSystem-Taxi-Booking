package com.feedback;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.vehicleBooking.BookingInsertDB;

@WebServlet("/FeedbackInsert")
public class FeedbackInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String feedback = request.getParameter("feedback");
		
		
		boolean status = FeedbackDBUtill.insertFeedback(name,email,contact,feedback);
		
		if(status) {
			response.sendRedirect("FeedbackDisplay.jsp");
			
		}else {
			response.sendRedirect("BookingFailed.jsp");
		}
		
		
	}

}
