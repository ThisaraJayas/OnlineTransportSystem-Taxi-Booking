package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.feedback.FeedbackDBUtill;

@WebServlet("/userupdateser")
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		
		boolean status = UserDB.updateUser(id, username, email, contact, password);
		
		if(status==true) {
			response.sendRedirect("AUserDisplay.jsp");
			
		}else {
			response.sendRedirect("BookingFailed.jsp");
		}
	}

}
