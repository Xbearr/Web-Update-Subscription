package com.updater.action;

import com.updater.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.updater.db.getSQL;

public class Login extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public User user = new User();
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute()
	{
		
		user.setUsername(getUsername());
		user.setPassword(getPassword());
		
		getSQL down = new getSQL();
		
		if(down.login(user))
		{
				return SUCCESS;
		}
		else 
		{
				return ERROR;
		}
	}
	
}
