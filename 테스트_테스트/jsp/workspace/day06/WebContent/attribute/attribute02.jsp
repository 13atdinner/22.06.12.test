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
		// attribute는 데이터를 객체로 담는다
		// attribute01.jsp 에서 Object로 넘어오기 때문에 String타입으로 객체 형변환을 해줘야 한다
		// < request >
// 		String userid = (String)request.getAttribute("userid");
// 		String userpw = (String)request.getAttribute("userpw");
// 		String username = (String)request.getAttribute("username");
		
		// < session >
		String userid = (String)session.getAttribute("userid");
		String userpw = (String)session.getAttribute("userpw");
		String username = (String)session.getAttribute("username");
	%>
	
	아이디	: <%=userid %><br>
	패스워드	: <%=userpw %><br>
	이름		: <%=username %><br>
</body>
</html>