package com.user;

public class User {
	private int userid;
	private String userName;
	private String email;
	private String contact;
	private String password;
	
	public User(int userid, String userName, String email, String contact, String password) {
		this.userid = userid;
		this.userName = userName;
		this.email = email;
		this.contact = contact;
		this.password = password;
	}

	public int getUserid() {
		return userid;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	public String getContact() {
		return contact;
	}

	public String getPassword() {
		return password;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
