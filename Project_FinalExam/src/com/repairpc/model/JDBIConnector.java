package com.repairpc.model;

import java.sql.SQLException;

import org.jdbi.v3.core.Jdbi;

import com.mysql.cj.jdbc.MysqlDataSource;

public class JDBIConnector {
	public static Jdbi jdbi;

	public static Jdbi getJdbi() {
		if (jdbi == null) {
			connect();
		}
		return jdbi;
	}

	public static void connect() {
		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setUrl("jdbc:mysql://" + Property.HOST + ":" + Property.PORT + "/" + Property.DBNAME);
		dataSource.setUser(Property.USER);
		dataSource.setPassword(Property.PASSWORD);
		try {
			dataSource.setAutoReconnect(true);
			dataSource.setUseCompression(true);
			// Kiểm tra kết nối
			System.out.println("Attempting to connect to: " + dataSource.getUrl());
			System.out.println("User: " + Property.USER);
		} catch (SQLException e) {
			System.err.println("Connection setup error: " + e.getMessage());
			throw new RuntimeException(e);
		}
		jdbi = Jdbi.create(dataSource);

	}
}
