<%@page import="com.koreait.beans.MemberBean"%>
<%@page import="com.koreait.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDAO mdao = new MemberDAO();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		// MemberDAO에 login메서드 만들어서 결과값을 boolean로 return
		
		MemberBean member = mdao.login(userid, userpw);
		
// 		if(mdao.login(userid, userpw)){		// 로그인 성공
		if(member != null){
			session.setAttribute("session_id",member);		// 위치 -> 로그인 성공시!에 접속자의 정보를 저장한다
	%>
		<script>
			location.href="main_view.jsp";
		</script>
	<%
		}else{	// 로그인 실패
	%>
		<script>
			alert("로그인 실패...");
			location.href="login_view.jsp";
		</script>
	<%
		}
	%>
</body>
</html>