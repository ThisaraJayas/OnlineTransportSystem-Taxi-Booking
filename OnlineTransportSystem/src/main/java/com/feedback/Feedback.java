package com.feedback;

public class Feedback {
	private int feedbackid;
	private String name;
	private String email;
	private String contact;
	private String feedback;
	
	public Feedback(int feedbackid, String name, String email, String contact, String feedback) {
		this.feedbackid = feedbackid;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.feedback = feedback;
	}


	public int getFeedbackid() {
		return feedbackid;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getContact() {
		return contact;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	
	
}
