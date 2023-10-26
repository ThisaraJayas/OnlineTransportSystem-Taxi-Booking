package com.driver;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;

import com.database.DBConnect;
import com.driverVehicle.DriverVehicle;

public class DriverLoginDB {
	private static Connection con = null;
	private static Statement st =null;
	private static ResultSet rs = null;
	
	public static Driver Authenticate(String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Driver where username='"+userName+"' AND password ='"+password+"'";
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				int userid = rs.getInt("driverid");
				String drivername = rs.getString("driverName");
				String username = rs.getString("username");
				String Password =rs.getString("password");
				String email = rs.getString("email");
				
				return new Driver(userid, drivername, username, Password, email);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
	public static void insertDriverDetail(String name, String username , String email, String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into Driver(driverName,username,email,password) values('"+name+"','"+username+"','"+email+"','"+password+"')";
			st.executeUpdate(sql);
			con.close();
			
		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		
	}
	public static List<Driver> getDriverdetail(){
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Driver";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int driveid = rs.getInt(1);
				String name= rs.getString(2);
				String username=rs.getString(3);
				String password=rs.getString(4);
				String email=rs.getString(5);
				
				Driver driver1 = new Driver(driveid,name,username,password,email);
				driver.add(driver1);
			}

		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		
		return driver;
	}
	
	}
	
