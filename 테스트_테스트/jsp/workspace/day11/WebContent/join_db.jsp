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
	<jsp:useBean id="member" class="com.koreait.beans.MemberBean"/>

<!-- 	member.setUserid(request.getParameter("userid")); : 이렇게도 처리할 수 있음-->
	
<!-- 	각각 전달되는 파라미터 값을 따로 처리해줘야 하지만, *로 해주면 한번에 해결가능(전체를 불러옴) -->
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userpw" name="member"/> --%>
<%-- 	<jsp:setProperty property="username" name="member"/> --%>
<%-- 	<jsp:setProperty property="usergender" name="member"/> --%>
<%-- 	<jsp:setProperty property="userphone" name="member"/> --%>

<!-- 	외부에서 전달된 name속성과 필드의 이름이 같으면 value가 자동으로 세팅된다 (여기서 필드이름은 MemberBean의 전역변수)-->	
	<jsp:setProperty property="*" name="member"/>		<!-- setProperty를 사용할 땐 useBean 필수!! -->
	<%
		MemberDAO mdao = new MemberDAO();
		if(mdao.join(member)){	// 회원가입 성공
	%>
		<script>
			alert("회원가입 성공!");
			location.href="login_view.jsp";
		</script>
	<%
		}else{	// 회원가입 실패
	%>
		<script>
			alert("회원가입 실패...");
			location.href="join_view.jsp";
		</script>
	<%
		}
	%>
</body>
</html>