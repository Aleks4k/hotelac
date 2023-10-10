package com.hotelac.demo.User;

public class Login {
	private String sessionID;
	private User user;
	
	public Login(String sessionID, User user) {
		super();
		this.sessionID = sessionID;
		this.user = user;
	}
	public String getSessionID() {
		return sessionID;
	}
	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}
	public User getUser() {
		return user;
	}
}
