package com.driverVehicle;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.driver.Driver;

@WebServlet("/DriverInsert")
public class DriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date =  request.getParameter("date");
		String timefrom = request.getParameter("timeFrom");
		String timeto = request.getParameter("timeTo");
		String fairprice = request.getParameter("fairPrice");
		String vehicletype = request.getParameter("vehType");
		int seatcount = Integer.parseInt(request.getParameter("seatCount"));
		
		HttpSession session = request.getSession();
		Driver driver = (Driver) session.getAttribute("driver");
		int driverid = driver.getDriverId();
		
		DriverVehicleDB.insertDriverVehicle(driverid, date, timefrom, timeto, fairprice, vehicletype, seatcount);
		
		List<DriverVehicle> drivehicle = DriverVehicleDB.getDriverVehicle(driverid);
		System.out.println(drivehicle);
		request.setAttribute("dvDetails", drivehicle);
		RequestDispatcher rd = request.getRequestDispatcher("DriverVehicle.jsp");
		rd.forward(request, response);
		
	}

}
