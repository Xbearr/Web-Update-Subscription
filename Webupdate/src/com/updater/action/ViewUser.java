package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.model.Url;
import com.updater.model.User;
import com.updater.db.getSQL;

public class ViewUser extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public User user;
	public String username;
	
	
	
	public String execute()
	{
		try 
		{
				getSQL down=new getSQL();
				setUser(down.GetUserByName(getUsername()));
				username = user.getUsername();
				return SUCCESS;
		} catch (Exception e) {
				return ERROR;
		}
	}
	
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
