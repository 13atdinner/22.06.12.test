<%@page import="java.sql.ResultSet"%>
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
	Connection conn = null;								
	
	String driver = "oracle.jdbc.driver.OracleDriver";	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";	
	String user = "wjsp";								
	String password = "wjsp";
	
	Class.forName(driver);
	System.out.println("jdbc driver 로딩성공!");
	
	conn = DriverManager.getConnection(url, user, password);
	System.out.println("오라클 연결 성공!");
	
// 	String sql = "SELECT SYSDATE FROM dual";
// 	PreparedStatement pstm = conn.prepareStatement(sql);
// 	// executeQuery : 쿼리문 수행
// 	ResultSet rs = pstm.executeQuery();
	
// 	if(rs.next()){
// 		out.print(rs.getDate(1));
// 	}

	String sql = "SELECT * FROM CAR";
	PreparedStatement pstm = conn.prepareStatement(sql);
	ResultSet rs = pstm.executeQuery();
	
	// 차번호, 브랜드, 색상, 가격
	while(rs.next()){										// getString으로 데이터 가져올때 (번호 or 컬럼명)을 쓸 수 있다
		out.print("차번호 : "+rs.getString(1)+"<br>");			// getString(번호) 
		out.print("브랜드 : "+rs.getString(2)+"<br>");	
		out.print("색상 : "+rs.getString("COLOR")+"<br>");	// getString(컬럼명)
		out.print("가격 : "+rs.getString("PRICE")+"<br>");
	}
	
	out.print("<br><hr>");
	
	String carnum = "3";
// 	sql = "SELECT color FROM CAR c WHERE CARNUM ='"+carnum+"'";
	sql = "SELECT color FROM CAR c WHERE CARNUM =?";			// 파라미터를 받을 값을 ?로 지정한다
	pstm = conn.prepareStatement(sql);
	
	pstm.setString(1, carnum);
	rs = pstm.executeQuery();
	
	if(rs.next()){
		out.print("색상 : "+rs.getString(1));
	}

	// close는 반납의 개념
	rs.close();
	pstm.close();
	conn.close();
	%>	
</body>
</html>