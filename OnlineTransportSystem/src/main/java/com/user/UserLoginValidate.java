package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.driver.Driver;
import com.driver.DriverLoginDB;

@WebServlet("/userloginserv")
public class UserLoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = UserDB.validate(username, password);
		if(user!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("Home.jsp");
		}else {
			response.sendRedirect("Home.jsp");
		}
	}

}
