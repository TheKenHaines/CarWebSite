package com.vehicle;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.time.temporal.*;


public class Vehicle {
	private boolean isNew;
	private String make;
	private String model;
	private int year;
	private String color;
	private LocalDate dateOfPurchase;
	private Double milesRan;
	private Double price;
	private String picturePath;
	private LocalDate dateEnteredIntoInventory;
	private String vinNum;
	private String description;
	private String newOrUsed;
	private String daysInInventory;
	private boolean isBiddable;

	public Vehicle() {
	}
	
	
	public boolean getIsNew() {
		return isNew;
	}

	public void setIsNew(boolean isNew) {
		setNewOrUsed(isNew);
		this.isNew = isNew;
	}

	

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
	
	

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public LocalDate getDateOfPurchase() {
		return dateOfPurchase;
	}

	public void setDateOfPurchase(LocalDate dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
	}

	public Double getMilesRan() {
		return milesRan;
	}

	public void setMilesRan(Double milesRan) {
		this.milesRan = milesRan;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getPicturePath() {
		return picturePath;
	}

	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}

	

	public LocalDate getDateEnteredIntoInventory() {
		return dateEnteredIntoInventory;
	}

	public void setDateEnteredIntoInventory(LocalDate dateEnteredIntoInventory) {
		this.dateEnteredIntoInventory = dateEnteredIntoInventory;
	}

	public String getVinNum() {
		return vinNum;
	}

	public void setVinNum(String vinNum) {
		this.vinNum = vinNum;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getNewOrUsed() {
		return this.newOrUsed;
	}
	
	public void setNewOrUsed(boolean isNew) {
		this.newOrUsed = (isNew) ? "NEW" : "PRE-OWNED";
	}
	
	
	public String toInventoryFile() {
		return make + ";" + model + ";" + year + ";" + color + ";" + milesRan + ";" + price + ";" + vinNum + ";" + picturePath + ";" + 
	description + ";" + dateToString(dateEnteredIntoInventory) + ";" + isNew;
	}
	
	public String dateToString(LocalDate date) {
		String formattedDate = date.format(DateTimeFormatter.ofPattern("MM/dd/yyyy"));
		return formattedDate;
	}
	
	
	public boolean getIsBiddable() {
		LocalDate today = LocalDate.now();
		long daysBetween = dateEnteredIntoInventory.until(today, ChronoUnit.DAYS);
		return (daysBetween >= 120) ? true : false;
		
	}
	
	public String getDaysInInventory() {
		LocalDate today = LocalDate.now();
		long daysBetween = dateEnteredIntoInventory.until(today, ChronoUnit.DAYS);
		String daysInInventory = daysBetween + "";
		return daysInInventory;
		
		
	}
	
	

}
