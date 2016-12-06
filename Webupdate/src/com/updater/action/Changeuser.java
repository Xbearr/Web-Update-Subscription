package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;

public class Changeuser extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String username;
	public String email;
	public String execute(){
		//System.out.println(username);
		return SUCCESS;
	}
}
