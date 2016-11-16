package com.updater.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.updater.model.Url;
import com.updater.db.getSQL;

public class ChangeUrlInf extends ActionSupport{
	
	private String id;
	private String url;
	private String username;
	private String interval;
	private String time;
	private int percent;
	public Url Uurl= new Url();
	
	
	public String execute()
	{
		Date start_time = new Date();
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");//设置日期格式
        String s_start_time = df.format(start_time);
		Uurl.setUrl(getUrl());
		Uurl.setUsername(getUsername());
		Uurl.setInterval(getInterval());
		Uurl.setPercent(getPercent());
		Uurl.setTime(s_start_time);
		Uurl.setId(s_start_time);
		getSQL down = new getSQL();
		
		if(down.DeleteUrl(getId()))
		{	
			if(down.newUrl(Uurl))
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
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}



	public int getPercent() {
		return percent;
	}



	public void setPercent(int percent) {
		this.percent = percent;
	}



	public String getInterval() {
		return interval;
	}



	public void setInterval(String interval) {
		this.interval = interval;
	}

}