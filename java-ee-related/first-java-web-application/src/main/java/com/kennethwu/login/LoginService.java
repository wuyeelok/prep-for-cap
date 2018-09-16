package com.kennethwu.login;

public class LoginService {

	public static boolean isUserValid(String username, String password) {
		if("in28Minutes".equals(username) && "dummy".equals(password)) {
			return true;
		} else {
			return false;
		}
	}
}
