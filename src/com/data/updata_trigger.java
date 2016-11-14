package com.data;
import java.util.ArrayList;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

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
	
	public static String Get(String url){
		String result = "";
		BufferedReader in = null;
		try{
			URL realUrl = new URL(url);
			URLConnection connection = realUrl.openConnection();
			connection.connect();
			in = new BufferedReader(new InputStreamReader(
				     connection.getInputStream(),"UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		}catch (Exception e){
			System.out.println("发送GET请求出现异常！" + e);
			e.printStackTrace();
		}
		finally {
			try {
			    if (in != null) {
			     in.close();
			    }
			} catch (Exception e2) {
			    e2.printStackTrace();
			}
	  }
	  return result;
	}
	
	private int trigger(url url){
		String result=Get(url.getUrl());
		mysimhash hash1=new mysimhash(result,64);
		int dis = hash1.getDistance(hash1.strSimHash,url.getHash());
		double score=1-1.0*dis/64;
		if (score>url.getPercent()){
			return 0;
		}
		else return 1;
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