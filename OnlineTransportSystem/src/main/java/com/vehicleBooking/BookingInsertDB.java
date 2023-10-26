package com.vehicleBooking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;

public class BookingInsertDB {
	
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean insertBookingInfo(String location, String pickupdate, String pickuptime, String dropoffdate, String dropofftime) {
		try {
		con = DBConnect.getConnection();
		st = con.createStatement();
		String sql = "insert into Booking values('"+location+"','"+pickupdate+"','"+pickuptime+"','"+dropoffdate+"','"+dropofftime+"')";
		st.executeUpdate(sql);
		return true;
		
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}
	
}
