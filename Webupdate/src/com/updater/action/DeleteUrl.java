package com.updater.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.db.getSQL;
import com.updater.model.Url;

public class DeleteUrl extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public ArrayList<Url> Uurl;
	
	public ArrayList<Url> getUurl() {
		return Uurl;
	}
	public void setUurl(ArrayList<Url> Uurl) {
		this.Uurl = Uurl;
	}
	
	public String id;
	public String username;
	public String execute()
	{
			
			getSQL down = new getSQL();
			username = down.GetUrlById(getId()).getUsername();
			if(down.DeleteUrl(getId()))
			{
					//System.out.println(user.getUsername());
					setUurl(down.GetUrlByName(username));
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