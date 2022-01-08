package com.xadmin.usermanagement.bean;

/**
 * User.java
 * This is a model class represents a User entity
 */
public class User {
	protected int id;
	protected String username;
	protected String role;
	protected String password;
	//protected boolean admin;
	
	public User() {
	}
	
	public User(String username, String role, String password) {
		super();
		this.username = username;
		this.role = role;
		this.password = password;
	}
	
	public User(int id, String role, String password) {
		super();
		this.id = id;
		this.role = role;
		this.password = password;
	}

	public User(int id, String username, String role, String password) {
		super();
		this.id = id;
		this.username = username;
		this.role = role;
		this.password = password;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}