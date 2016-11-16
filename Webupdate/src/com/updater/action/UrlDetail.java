package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.model.Url;
import com.updater.db.getSQL;

public class UrlDetail extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Url Uurl;
	public String username;
	public String id;

	public Url getUurl() {
		return Uurl;
	}
	public void setUurl(Url Uurl) {
		this.Uurl = Uurl;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String execute()
	{
		try 
		{
				getSQL down=new getSQL();
				setUurl(down.GetUrlById(getId()));
				//for (int i = 0; i < Uurl.size();i++)
					//System.out.println(Uurl.get(i).getUrl());
				username = Uurl.getUsername();
				//System.out.println(username);
				return SUCCESS;
		} catch (Exception e) {
				return ERROR;
		}
	}

}