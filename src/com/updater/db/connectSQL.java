package com.updater.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class connectSQL {
	private static final String LOGIN_NAME = "root"; 
	private static final String LOGIN_PASSWORD = "123";
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/account?characterEncoding=utf-8";

	public Connection connect;
	public Statement sta;
	public PreparedStatement pst;

	public void ConnectDataBase() {
		try {
			Class.forName(DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			connect = DriverManager.getConnection(URL, LOGIN_NAME, LOGIN_PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
