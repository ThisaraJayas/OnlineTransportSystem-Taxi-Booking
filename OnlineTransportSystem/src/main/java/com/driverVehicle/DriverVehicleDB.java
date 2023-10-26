package com.driverVehicle;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;

public class DriverVehicleDB {
	
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static void insertDriverVehicle(int driverid, String date, String timefrom, String timeto, String fairprice, String vehicletype, int seatcount) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into DriverVehicle(driverid,Date,Time_from,Time_to,fair_price,Vehicle_type,Seat_Count) values('"+driverid+"','"+date+"','"+timefrom+"','"+timeto+"','"+fairprice+"','"+vehicletype+"','"+seatcount+"')";
			st.executeUpdate(sql);
			con.close();
			
		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		
	}
	public static List<DriverVehicle> getDriverVehicle(int driverid){
		ArrayList<DriverVehicle> drivervehicle = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from DriverVehicle where driverid = '"+driverid+"'";
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
				drivervehicle.add(dv);
			}

		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		
		return drivervehicle;
	}
	public static boolean UpdateDriverVehicle(int dvid, String date, String timefrom, String timeto, String fairprice, String vehicletype, int seatcount) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "update DriverVehicle set Date='"+date+"',Time_from='"+timefrom+"',Time_to='"+timeto+"',fair_price='"+fairprice+"',Vehicle_type='"+vehicletype+"',Seat_Count='"+seatcount+"' where dvId='"+dvid+"'";
			st.executeUpdate(sql);
			con.close();
			return true;
		}catch(Exception ex) {
				ex.printStackTrace(); 
				return false;
			}
		
		
	}
	public static boolean DeleteDriverVehicle(int id) {
		try {
			con=DBConnect.getConnection();
			st = con.createStatement();
			String sql = "Delete from DriverVehicle where dvId='"+id+"'";
			st.executeUpdate(sql);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}
}
