package com.vehicleBooking;

public class Booking {
	private int bid;
	private String location;
	private String pickupDate;
	private String pickupTime;
	private String dropoffDate;
	private String dropoffTime;
	
	public Booking(int bid, String location, String pickupDate, String pickupTime, String dropoffDate,
			String dropoffTime) {
		super();
		this.bid = bid;
		this.location = location;
		this.pickupDate = pickupDate;
		this.pickupTime = pickupTime;
		this.dropoffDate = dropoffDate;
		this.dropoffTime = dropoffTime;
	}

	public int getBid() {
		return bid;
	}

	public String getLocation() {
		return location;
	}

	public String getPickupDate() {
		return pickupDate;
	}

	public String getPickupTime() {
		return pickupTime;
	}

	public String getDropoffDate() {
		return dropoffDate;
	}

	public String getDropoffTime() {
		return dropoffTime;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}

	public void setPickupTime(String pickupTime) {
		this.pickupTime = pickupTime;
	}

	public void setDropoffDate(String dropoffDate) {
		this.dropoffDate = dropoffDate;
	}

	public void setDropoffTime(String dropoffTime) {
		this.dropoffTime = dropoffTime;
	}
	
	
}
