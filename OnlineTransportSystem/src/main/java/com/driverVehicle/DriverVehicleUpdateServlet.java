package com.driverVehicle;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DriverUpdate")
public class DriverVehicleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String date =  request.getParameter("date");
		String timefrom = request.getParameter("timeFrom");
		String timeto = request.getParameter("timeTo");
		String fairprice = request.getParameter("fairPrice");
		String vehicletype = request.getParameter("vehType");
		int seatcount = Integer.parseInt(request.getParameter("seatCount"));
		
		boolean status = DriverVehicleDB.UpdateDriverVehicle(id, date, timefrom, timeto, fairprice, vehicletype, seatcount);
		if(status==true) {
			response.sendRedirect("DriverVehicle.jsp");
		}else {
			response.sendRedirect("BookingFailed.jsp");
		}
	}

}
