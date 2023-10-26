package com.feedback;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FeedbackDelet")
public class FeedbackDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean status = FeedbackDBUtill.deleteFeedback(id);
		if(status) {
			response.sendRedirect("FeedbackDisplay.jsp");
			
		}else {
			
		}
	}

}
