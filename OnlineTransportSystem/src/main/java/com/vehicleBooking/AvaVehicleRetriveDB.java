package com.vehicleBooking;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;
import com.driverVehicle.DriverVehicle;

public class AvaVehicleRetriveDB {
	private static Connection con =null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static List<DriverVehicle> getBooking(){
		ArrayList<DriverVehicle> vehicle = new ArrayList<DriverVehicle>();
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from DriverVehicle";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int driveid = rs.getInt(1);
				int id = rs.getInt(2);
				String date= rs.getString(3);
				String timeFrom=rs.getString(4);
				String timeTo=rs.getString(5);
				String fairPrice=rs.getString(6);
				String vehicleType=rs.getString(7);
				int seatCount=rs.getInt(8);
				
				DriverVehicle dv = new DriverVehicle(driveid,id, date, timeFrom, timeTo, fairPrice, vehicleType, seatCount);
				vehicle.add(dv);
				
			}
			
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return vehicle;
		
		
	}
	
	
}
