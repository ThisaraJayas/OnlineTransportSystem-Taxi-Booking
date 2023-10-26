package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static String url = "jdbc:sqlserver://localhost;encrypt=false;database=RideMate;integratedSecurity=false;";
	public static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    con =  DriverManager.getConnection(url,"user","123thisara");
		}catch(Exception e) {
			System.out.println("Database connection not successfull");
		}
		return con;
	}
}
