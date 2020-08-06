package com.user;

import java.util.List;

import com.repository.Repository;

public class validate {

	public static boolean checkuser(String email, String password) {
		List<User> list = Repository.getUserList();

		for (User user : list) {
			if (user.getEmail().equalsIgnoreCase(email)) {
				return (user.getPassWord().equals(password)) ? true : false;
			} 
		}
			return false;
	}
}
