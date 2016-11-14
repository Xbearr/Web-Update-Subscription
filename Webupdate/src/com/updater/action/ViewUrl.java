package com.updater.action;

import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.updater.model.Url;
import com.updater.db.getSQL;

public class ViewUrl extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ArrayList<Url> Uurl;
	
	public String username;

	public ArrayList<Url> getUurl() {
		return Uurl;
	}
	public void setUurl(ArrayList<Url> Uurl) {
		this.Uurl = Uurl;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String execute()
	{
		try 
		{
				getSQL down=new getSQL();
				setUurl(down.GetUrlByName(getUsername()));
				//for (int i = 0; i < Uurl.size();i++)
					//System.out.println(Uurl.get(i).getUrl());
				//System.out.println(getUsername());
				return SUCCESS;
		} catch (Exception e) {
				return ERROR;
		}
	}

}
