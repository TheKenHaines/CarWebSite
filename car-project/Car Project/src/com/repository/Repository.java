package com.repository;

import java.util.ArrayList;
import java.util.List;

import com.sale.Sale;
import com.user.User;
import com.vehicle.Vehicle;

public class Repository {
	
	private static List<User> userList = new ArrayList<User>();
	
	private static List<Vehicle> carList = new ArrayList<Vehicle>();
	
	private static List<Sale> salesList = new ArrayList<Sale>();
	
	
	public static List<User> getUserList() {
		return userList;
	}
	
	public static List<Vehicle> getCarList() {
		return carList;
	}
	
	public static void  setUserList(List<User> list) {
		userList = list;
	}
	
	public static void setCarList(List<Vehicle> list) {
		carList = list;
	}

	public static List<Sale> getSalesList() {
		return salesList;
	}

	public static void setSalesList(List<Sale> list) {
		salesList = list;
	}
	
	
	
}
