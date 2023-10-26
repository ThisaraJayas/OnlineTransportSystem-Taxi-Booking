package com.driver;

public class Driver {
	private int driverId;
	private String name;
	private String userName;
	private String password;
	private String email;
	
	public Driver(int driverId, String name, String userName, String password, String email) {
		this.driverId = driverId;
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.email = email;
	}

	public int getDriverId() {
		return driverId;
	}

	public String getName() {
		return name;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
