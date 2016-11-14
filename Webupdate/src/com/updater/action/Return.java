package com.updater.action;

import com.opensymphony.xwork2.ActionSupport;

public class Return extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String username;
	public String execute(){
		//System.out.println(username);
		return SUCCESS;
	}
}
