package com.updater.action;

import com.updater.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.updater.db.getSQL;
import com.updater.model.send_email;

public class Register extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public User user = new User();
	private String username;
	private String password;
	private String email;
	
	public String getUsername(){return username;}
	public void setUsername(String username) {this.username = username;}
	public String getEmail() {return email;	}
	public void setEmail(String email) {this.email = email;	}
	public String getPassword() {return password;}
	public void setPassword(String password) {	this.password = password;}
	
	
	
	public String execute() throws Exception
	{
		
		user.setUsername(getUsername());
		user.setPassword(getPassword());
		user.setEmail(getEmail());
		send_email.send_mail(getEmail(),"none",2);
		getSQL down = new getSQL();
		
		if(down.newUser(user))
		{
				
				return SUCCESS;
		}
		else 
		{
				return ERROR;
		}
	}
	
}
