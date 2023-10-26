package com.driverVehicle;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/driverDelete")
public class DriverVehicleDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean status = DriverVehicleDB.DeleteDriverVehicle(id);
		if(status==true) {
			response.sendRedirect("DriverVehicle.jsp");
		}else {
			response.sendRedirect("");
		}
	}

}
