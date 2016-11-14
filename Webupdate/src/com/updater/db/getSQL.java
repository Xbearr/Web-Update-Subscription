package com.updater.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.updater.model.Url;
import com.updater.model.User;


public class getSQL {
	static connectSQL con=new connectSQL();
	
	public boolean newUser(User newuser)
	{
		 con.ConnectDataBase();
		 PreparedStatement state = null;
		 int amount=0; 
		 String INSERT_SQL = "insert into user(username,password,email) values('"+newuser.getUsername()+"','"+newuser.getPassword()+"','"+newuser.getEmail()+"')";
		try {
			state = con.connect.prepareStatement(INSERT_SQL);
			amount = state.executeUpdate();
			if(amount==1){
				state.close();
				return true;
			}
			else{
				return  false;
			}
		    } //endof try
		    catch (SQLException e) {
			e.printStackTrace();
		    }
		return false;
	}

	public boolean newUrl(Url nurl)
	{
		 con.ConnectDataBase();
		 PreparedStatement state = null;
		 int amount=0; 
		 String INSERT_SQL = "insert into url(id,url,username,jiange,hash,time,percent) values('"+nurl.getId()+"','"+nurl.getUrl()+"','"+nurl.getUsername()+"','"+nurl.getInterval()+"','"+null+"','"+nurl.getTime()+"','"+nurl.getPercent()+"')";
		 try {
			state = con.connect.prepareStatement(INSERT_SQL);
			amount = state.executeUpdate();
			if(amount==1){
				state.close();
				return true;
			}
			else{
				return  false;
			}
		    } //endof try
		    catch (SQLException e) {
			e.printStackTrace();
		    }
		return false;
	}
	
	public boolean login(User userlog)
	{
		 con.ConnectDataBase();
		 PreparedStatement state=null;
		 ResultSet res=null;
		 String SEARCH_SQL = "select password,email from user  where username = ?";
		 try {
				User user = new User();
				state = con.connect.prepareStatement(SEARCH_SQL);
				state.setString(1, userlog.getUsername());
				res = state.executeQuery();
				while (res.next()) {
					user.setUsername(userlog.getUsername());
					user.setPassword(res.getString("password"));
					user.setEmail(res.getString("email"));
				}
				state.close();
				//System.out.println(user.getUsername()+" "+user.getPassword());
				//System.out.println(userlog.getUsername()+" "+userlog.getPassword());
				if (user.getPassword().equals(userlog.getPassword())){
					return true;
				}
				else
				{
					return false;
				}
			} 
		    catch (SQLException e) {
			e.printStackTrace();
			return false;
		    }
	}
	
	public ArrayList<Url> GetUrlByName(String name)
	{
		 con.ConnectDataBase();
		 PreparedStatement state=null;
		 ResultSet res=null;
		 String SEARCH_SQL = "select * from url where username = ?";
		try {
			ArrayList<Url> urllist = new ArrayList<Url>();
			state = con.connect.prepareStatement(SEARCH_SQL);
			state.setString(1, name);
			res = state.executeQuery();
			while (res.next()) {
				Url urlinsql = new Url();
				urlinsql.setId(res.getString("id"));
				urlinsql.setUrl(res.getString("url"));
				urlinsql.setUsername(res.getString("username"));
				//System.out.println(urlinsql.getUrl());
				urllist.add(urlinsql);
			}
			state.close();
			return urllist;
		    } 
		    catch (SQLException e) {
			e.printStackTrace();
			return null;
		    }
	}
	
	public Url GetUrlById(String id)
	{
		 con.ConnectDataBase();
		 PreparedStatement state=null;
		 ResultSet res=null;
		 String SEARCH_SQL = "select * from url where id = ?";
		try {
			Url urlinsql = new Url();
			state = con.connect.prepareStatement(SEARCH_SQL);
			state.setString(1, id);
			res = state.executeQuery();
			while (res.next()) {
				urlinsql.setId(res.getString("id"));
				urlinsql.setUrl(res.getString("url"));
				urlinsql.setUsername(res.getString("username"));
				urlinsql.setInterval(res.getString("jiange"));
				urlinsql.setTime(res.getString("time"));
				urlinsql.setPercent(res.getInt("percent"));
				//System.out.println(urlinsql.getUrl());
			}
			state.close();
			return urlinsql;
		    } 
		    catch (SQLException e) {
			e.printStackTrace();
			return null;
		    }
	}
	
	public User GetUserByName(String name)
	{
		 con.ConnectDataBase();
		 PreparedStatement state=null;
		 ResultSet res=null;
		 String SEARCH_SQL = "select * from user where username = ?";
		try {
			User user = new User();
			state = con.connect.prepareStatement(SEARCH_SQL);
			state.setString(1, name);
			res = state.executeQuery();
			while (res.next()) {
				user.setUsername(name);
				user.setEmail(res.getString("email"));
				user.setPassword(res.getString("password"));
				//System.out.println(urlinsql.getUrl());
			}
			state.close();
			return user;
		    } 
		    catch (SQLException e) {
			e.printStackTrace();
			return null;
		    }
	}
	
	public boolean DeleteUrl(String id)
	{
		 con.ConnectDataBase();
		 PreparedStatement state = null;
		 int amount=0; 
		 String SEARCH_SQL = "delete from url where id = ?";
		try {
			state = con.connect.prepareStatement(SEARCH_SQL);
			state.setString(1, id);
			amount = state.executeUpdate();
			if(amount==1){
				state.close();
				return true;
			}
			else{
				return  false;
			}
		    } //endof try
		    catch (SQLException e) {
			e.printStackTrace();
		    }
		return false;
	}
	
	
}
