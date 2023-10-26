package com.driver;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.driverVehicle.DriverVehicle;
import com.driverVehicle.DriverVehicleDB;

@WebServlet("/driverregser")
public class DriverRegInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		DriverLoginDB.insertDriverDetail(name, username, email, password);
		
		List<Driver> driver = DriverLoginDB.getDriverdetail();
		request.setAttribute("dvDetails", driver);
		RequestDispatcher rd = request.getRequestDispatcher("DriverLogin.jsp");
		rd.forward(request, response);
	}

}
