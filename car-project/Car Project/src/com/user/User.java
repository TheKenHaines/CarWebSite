package com.user;

import java.util.UUID;

public class User {
	private String firstName;
	private String lastName;
	private String passWord;
	private String uniqueID;
	private String email;
	
	public User() {
		this.uniqueID = UUID.randomUUID().toString();
	}

	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getUniqueID() {
		return uniqueID;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return firstName + " " + lastName;
	}
	
}
