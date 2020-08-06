package com.sale;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Sale {
	private String firstName;
	private String lastName;
	private Address address;
	private String creditNum;
	private String creditExp;
	private LocalDate dateSold;

	public Sale() {
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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getCreditNum() {
		return creditNum;
	}

	public void setCreditNum(String creditNum) {
		this.creditNum = creditNum;
	}

	public String getCreditExp() {
		return creditExp;
	}

	public void setCreditExp(String creditExp) {
		this.creditExp = creditExp;
	}
	
	public LocalDate getDateSold() {
		return this.dateSold;
	}
	
	public void setDateSold(LocalDate date) {
		this.dateSold = date;
	}
	
	public String dateToString(LocalDate date) {
		String formattedDate = date.format(DateTimeFormatter.ofPattern("MM/dd/yyyy"));
		return formattedDate;
	}
	
	
	public String toFile() {
		return firstName + ";" + lastName + ";" + address.toFile() + ";" + creditNum + ";" + creditExp + ";" + dateToString(dateSold);
	}

}
