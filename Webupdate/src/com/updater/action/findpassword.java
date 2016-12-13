package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.db.getSQL;
import com.updater.model.User;
import com.updater.model.send_email;;
public class findpassword extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	public User user;
	public String username;
	public String password;
	public String email;
	
	public String execute()
	{
		try{
			getSQL down = new getSQL();
			user=down.GetUserByName(getUsername());
			
			if(user.getEmail().equals(getEmail())) {
				String password=user.getPassword();
				send_email.send_mail(user.getEmail(),password, 0);
				return SUCCESS;
			}
			else{
				return ERROR;
			}
		} catch (Exception e) {
			return ERROR;
		}
		
		//System.out.println(user.getEmail());
		//System.out.println(username);
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
