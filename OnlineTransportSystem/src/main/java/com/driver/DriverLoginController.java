package com.driver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/driverloginServlet")
public class DriverLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Driver driver = DriverLoginDB.Authenticate(username, password);
		if(driver!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("driver", driver);
			response.sendRedirect("DriverVehicle.jsp");
		}else {
			response.sendRedirect("DriverLogin.jsp");
		}
		
		
		
		
		
	}

}
