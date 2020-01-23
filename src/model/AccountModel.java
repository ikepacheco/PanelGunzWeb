package model;

public class AccountModel {
	
	public boolean login(String username, String password) {
		return username.equalsIgnoreCase("demon") && password.equalsIgnoreCase("123");
	}
	
}
