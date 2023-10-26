package com.feedback;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FeedbackUpdat")
public class FeedbackUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String feedback = request.getParameter("feedback");
		
		
		boolean status = FeedbackDBUtill.updateFeedback(id,name,email,contact,feedback);
		
		if(status) {
			response.sendRedirect("FeedbackDisplay.jsp");
			
		}else {
			response.sendRedirect("BookingFailed.jsp");
		}
	}

}
