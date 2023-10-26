package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userinsertser")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		
		boolean status =UserDB.insertUserDetails(username, email, contact, password);
		
		if(status==true) {
			response.sendRedirect("UserLogin.jsp");
			
		}else {
			response.sendRedirect("UserRegister.jsp");
		}
		
	}

}
