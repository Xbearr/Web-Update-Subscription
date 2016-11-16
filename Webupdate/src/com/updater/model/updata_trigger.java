package com.updater.model;
import java.util.ArrayList;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.TimerTask; 

public class updata_trigger {
	
	private int difftime(Url url) {
		Date now=new Date();
		SimpleDateFormat df =new SimpleDateFormat("HH:mm:ss");
		String nows=df.format(now);
		String[] n=nows.split(":");
		System.out.println(url.getTime());
		String[] t=url.getTime().split(":");
		
		int difftime=0;
		if (Integer.parseInt(n[0])-Integer.parseInt(t[0])>0){
        	difftime+=(Integer.parseInt(n[0])-Integer.parseInt(t[0]))*3600;
        }
        else {
        	difftime+=(Integer.parseInt(n[0])-Integer.parseInt(t[0])+24)*3600;
        }
        difftime+=(Integer.parseInt(n[1])-Integer.parseInt(t[1]))*60+Integer.parseInt(n[2])-Integer.parseInt(t[2]);
        if(difftime>=Integer.valueOf(url.getInterval())){
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
	
	private int trigger(Url url){
		String result=Get(url.getUrl());
		mysimhash hash1=new mysimhash(result,64);
		String Hhash=url.getHash();
		if (Hhash==null) return 0;
		int dis = hash1.getDistance(hash1.strSimHash,Hhash);
		double score=1-1.0*dis/64;
		double percent=0.1;
		if (score>percent){
			url.setHash(hash1.strSimHash);
			return 0;
		}
		else return 1;
	}  
	
	public void spider_trigger(Url url) throws Exception {
		
		if ( difftime(url)==1) {
			if(trigger(url)==1){
				send_email.send_mail("ruansheproject@qq.com");
			}
			else return;
		}
		else return;
	}
}