package com.driverVehicle;

public class DriverVehicle {
	private int driverid;
	private int id;
	private String date;
	private String timeFrom;
	private String timeTo;
	private String fairPrice;
	private String vehicleType;
	private int seatCount;
	
	public DriverVehicle() {
		
	}
	
	public DriverVehicle(int driverid,int id, String date, String timeFrom, String timeTo, String fairPrice, String vehicleType,
			int seatCount) {
		this.driverid=driverid;
		this.id=id;
		this.date = date;
		this.timeFrom = timeFrom;
		this.timeTo = timeTo;
		this.fairPrice = fairPrice;
		this.vehicleType = vehicleType;
		this.seatCount = seatCount;
	}
	

	public int getDriverid() {
		return driverid;
	}


	public void setDriverid(int driverid) {
		this.driverid = driverid;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getDate() {
		return date;
	}

	public String getTimeFrom() {
		return timeFrom;
	}

	public String getTimeTo() {
		return timeTo;
	}

	public String getFairPrice() {
		return fairPrice;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public int getSeatCount() {
		return seatCount;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setTimeFrom(String timeFrom) {
		this.timeFrom = timeFrom;
	}

	public void setTimeTo(String timeTo) {
		this.timeTo = timeTo;
	}

	public void setFairPrice(String fairPrice) {
		this.fairPrice = fairPrice;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public void setSeatCount(int seatCount) {
		this.seatCount = seatCount;
	}
	
	
	
	
	
}
