package com.feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;
import com.driverVehicle.DriverVehicle;

public class FeedbackDBUtill {
	
	private static Connection con = null;
	private static Statement st =null;
	private static ResultSet rs = null;
	
	public static boolean insertFeedback(String name, String email, String contact, String feedback) {
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into Feedback(name,email,contact,feedback) values('"+name+"','"+email+"','"+contact+"','"+feedback+"')";
			st.executeUpdate(sql);
			con.close();
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}
	public static List<Feedback> getFeedback(){
		ArrayList<Feedback> feedback = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Feedback";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int feedbackid = rs.getInt(1);
				String name= rs.getString(2);
				String email =rs.getString(3);
				String contact=rs.getString(4);
				String feedback1=rs.getString(5);
				
				Feedback fed = new Feedback(feedbackid, name, email, contact, feedback1);
				feedback.add(fed);
			}

		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		return feedback;
		
	}
	public static boolean updateFeedback(int id,String name,String email,String contact,String feedback) {
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql= "update Feedback set name='"+name+"',email='"+email+"',contact='"+contact+"',feedback='"+feedback+"'where feedbackid='"+id+"'";
			st.executeUpdate(sql);
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public static boolean deleteFeedback(int id) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql= "delete from Feedback where feedbackid='"+id+"'";
			st.executeUpdate(sql);
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
}

