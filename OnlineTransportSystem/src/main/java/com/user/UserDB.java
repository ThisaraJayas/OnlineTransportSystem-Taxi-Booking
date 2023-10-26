package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;
import com.driver.Driver;
import com.feedback.Feedback;

public class UserDB {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	//insert
	public static boolean insertUserDetails(String username, String email, String contact, String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into Users(username,email,contact,password) values('"+username+"','"+email+"','"+contact+"','"+password+"')";
			st.executeUpdate(sql);
			con.close();
			return true;
		}catch(Exception ex) {
				ex.printStackTrace(); 
				return false;
			}
		
		
	}
	//retrive
	public static List<User> getUser(){
		ArrayList<User> user = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Users";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int userid = rs.getInt(1);
				String usename= rs.getString(2);
				String email =rs.getString(3);
				String contact=rs.getString(4);
				String password=rs.getString(5);
				
				User users = new User(userid, usename, email, contact, password);
				user.add(users);
			}

		}catch(Exception ex) {
				ex.printStackTrace(); 
			}
		return user;
		
	}
	//update 
	public static boolean updateUser(int id,String username,String email,String contact,String password) {
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql= "update Users set username='"+username+"',email='"+email+"',contact='"+contact+"',password='"+password+"'where userid='"+id+"'";
			st.executeUpdate(sql);
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	//delete
	public static boolean deleteUser(int id) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql= "delete from Users where userid='"+id+"'";
			st.executeUpdate(sql);
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	//validate
	public static User validate(String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Users where username='"+userName+"' AND password ='"+password+"'";
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				int userid = rs.getInt("userid");
				String userName1 = rs.getString("username");
				String email = rs.getString("email");
				String contact =rs.getString("contact");
				String password1 = rs.getString("password");
				
				return new User(userid, userName1, email, contact, password1);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
