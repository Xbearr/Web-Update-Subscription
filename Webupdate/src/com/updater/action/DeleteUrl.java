package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.db.getSQL;

public class DeleteUrl extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String id;
	public String username;
	public String execute()
	{
			
			getSQL down = new getSQL();
			username = down.GetUrlById(getId()).getUsername();
			if(down.DeleteUrl(getId()))
			{
					//System.out.println(user.getUsername());
					return SUCCESS;
			}
			else 
			{
					return ERROR;
			}
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}