package com.vehicleBooking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.driverVehicle.DriverVehicle;

@WebServlet("/BookingInsrt")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location = request.getParameter("location");
		String pickupdate = request.getParameter("pickupDate");
		String pickuptime = request.getParameter("pickupTime");
		String dropoffdate = request.getParameter("returnDate");
		String dropofftime = request.getParameter("returnTime");
		
		boolean status = BookingInsertDB.insertBookingInfo(location, pickupdate, pickuptime, dropoffdate, dropofftime);
		
		if(status) {
			response.sendRedirect("BookingSuccess.jsp");
			
		}else {
			response.sendRedirect("BookingFailed.jsp");
		}
		
	
	}

}
