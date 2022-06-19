<%@page import="com.koreait.dao.MemberDAO"%>
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
		// DB Connection
		// ..........
		
		// < DBConnection으로 공통 부분 뺌 >
// 		Connection conn = null;									// 특정select age_db랑, 전체select age_all이랑 겹치는 부분이므로 java로 빼주어 호출만 해준다
																
// 		String driver = "oracle.jdbc.driver.OracleDriver";	
// 		String url = "jdbc:oracle:thin:@localhost:1521:xe";	
// 		String user = "wjsp";								
// 		String password = "wjsp";
		
// 		Class.forName(driver);
// 		conn = DriverManager.getConnection(url, user, password);
		
		// < MemberDAO로 긴 부분 따로 뺌 >
// 		Connection conn = DBConnection.getConnection();			
// 		String sql = "SELECT age FROM MEMBER WHERE name = ?";
// 		PreparedStatement pstm = conn.prepareStatement(sql);
		
// 		pstm.setString(1, name);
// 		ResultSet rs = pstm.executeQuery();

		String name = request.getParameter("name");				// 특정 값만 select할거니까  파라미터값 필요
		MemberDAO mda = new MemberDAO();
		int age = mda.getAge(name);
	%>
	
	<%
		if(age != 0){
	%>
		이름 : <%=name %><br>
		나이 : <%=age %><br>
	<%
		} else{
	%>
		찾는 이름이 없습니다
	<%
		}
	%>
	<input type="button" value="다시 검색하기" onclick="location.href='age_search.jsp'">
</body>
</html>