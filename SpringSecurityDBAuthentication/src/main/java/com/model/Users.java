package com.model;

public class Users {

	private Authorities authorities;
	private String User_ID;
	private String Password;
	private String Display_Name;
	private String Employee_ID;
	private Boolean enabled;
	
	public Authorities getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Authorities authorities) {
		this.authorities = authorities;
	}
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getDisplay_Name() {
		return Display_Name;
	}
	public void setDisplay_Name(String display_Name) {
		Display_Name = display_Name;
	}
	public String getEmployee_ID() {
		return Employee_ID;
	}
	public void setEmployee_ID(String employee_ID) {
		Employee_ID = employee_ID;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	

	
}
