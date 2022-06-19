<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;								// Connection은 sql을 import해줘야 함
	
	String driver = "oracle.jdbc.driver.OracleDriver";	// 드라이버 경로 (복붙 사용)
	String url = "jdbc:oracle:thin:@localhost:1521:xe";	// local호스트 경로 (복붙 사용)
	String user = "wjsp";								// DB에 wjsp계정을 만들었는데 그 계정에 접속하겠다는 선언(DB를 끌어다 쓸 경우)
	String password = "wjsp";
	
	Class.forName(driver);
	System.out.println("jdbc driver 로딩성공!");
	
	conn = DriverManager.getConnection(url, user, password);
	System.out.println("오라클 연결 성공!");
	
// 	insert 
	String sql = "INSERT INTO car(carnum, BRAND, COLOR, PRICE) values('3','Tesla','White',200000000)";
// 	delete
	String sql2 = "DELETE car WHERE color = 'White'";
// 	update
	String sql3 = "UPDATE car SET COLOR = 'Gray' WHERE COLOR = 'White'";
// 	create table
	String sql4 = "CREATE TABLE car2(carnum NUMBER(5),BRAND VARCHAR2(10),COLOR VARCHAR2(10),PRICE NUMBER(10))";
// 	drop table
	String sql5 = "DROP TABLE car2";
	
	int check = 0;
	PreparedStatement pstm = conn.prepareStatement(sql);
	check = pstm.executeUpdate();
	
	System.out.println("check : "+check);
	
%>
</body>
</html>