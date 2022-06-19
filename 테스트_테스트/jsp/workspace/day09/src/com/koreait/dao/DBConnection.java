package com.koreait.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() {
		
		Connection conn = null;										// 이건 따로 왜 빼놓는가??
		
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";		// 예외 처리 구문 안에 다 넣어준다
			String url = "jdbc:oracle:thin:@localhost:1521:xe";	
			String user = "wjsp";								
			String password = "wjsp";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 접속 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("알 수 없는 오류");
			e.printStackTrace();
		}
			
		return conn;
	}
	
}
