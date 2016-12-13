package com.updater.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class connectSQL 
{
	static String sqlurl="jdbc:mysql://localhost:3306/account?characterEncoding=utf8&useSSL=true";
	static String user="root";
	static String password="";
	static String driver="com.mysql.jdbc.Driver";
	public Connection connect;
	public Statement sta;
	public PreparedStatement pst;
	public void ConnectDataBase() {
		try 
		{
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try 
		{
			connect = DriverManager.getConnection(sqlurl, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
