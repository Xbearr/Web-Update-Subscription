package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.model.User;
import com.updater.db.getSQL;


public class ChangeUserInf extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public User user;
	public String username;
	public String password;
	public String newpassword;
	public String email;
	
	public String execute()
	{
		getSQL down = new getSQL();
		user=down.GetUserByName(getUsername());
		user.setEmail(getEmail());
		//System.out.println(user.getEmail());
		//System.out.println(username);
		if ((getNewpassword().equals(""))){
			//System.out.println(username);
			if(down.DeleteUserByName(username))
			{	
				//System.out.println(username);
				if(down.newUser(user))
				{	
					//System.out.println(username);
						return SUCCESS;
				}
				else 
				{
						return ERROR;
				}
			}
			else 
			{
					return ERROR;
			}
			
		}else
		{
			//System.out.println(username);
			if(user.getPassword().equals(getPassword()))
			{	
				user.setPassword(getNewpassword());
				//System.out.println(getNewpassword());
				if(down.DeleteUserByName(username))
				{	
					if(down.newUser(user))
					{	
							return SUCCESS;
					}
					else 
					{
							return ERROR;
					}
				}
				else 
				{
						return ERROR;
				}
					
			}
			else 
			{
					return ERROR;
			}
		}
	}
	
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
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
