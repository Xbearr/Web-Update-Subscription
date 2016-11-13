package com.data;
import java.util.ArrayList;
import java.util.Date;
import java.text.SimpleDateFormat;

import java.sql.*;

public class updata_trigger {
	private url url;
	private user user;
	private ArrayList<url> urls = new ArrayList<>();
	
	public url getUrl() {
		return url;
	}
	public void setUrl(url url) {
		this.url = url;
	}
	public user getUser() {
		return user;
	}
	public void setUser(user user) {
		this.user = user;
	}
	public ArrayList<url> getUrls() {
		return urls;
	}
	public void setUrls(ArrayList<url> urls) {
		this.urls = urls;
	}
	
	private int difftime(url url) {
		Date now=new Date();
		SimpleDateFormat df =new SimpleDateFormat("HH:mm:ss");
		String nows=df.format(now);
		String[] n=nows.split(":");
		String[] t=url.getTime().split(":");
		int difftime=0;
		if (Integer.parseInt(n[0])-Integer.parseInt(t[0])>0){
        	difftime+=(Integer.parseInt(n[0])-Integer.parseInt(t[0]))*3600;
        }
        else {
        	difftime+=(Integer.parseInt(n[0])-Integer.parseInt(t[0])+24)*3600;
        }
        difftime+=(Integer.parseInt(n[1])-Integer.parseInt(t[1]))*60+Integer.parseInt(n[2])-Integer.parseInt(t[2]);
        if(difftime>=url.getInterval()){
        	url.setTime(nows);
        	return 1;
        }
        else return 0;
	}
	
	private int trigger(url url){
		return 1;
	}
	
	public void spider_trigger(url url) {
		
		if ( difftime(url)==1) {
			if(trigger(url)==1){
				//email;
			}
			else return;
		}
		else return;
	}
	
}
