<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// DB와 request를 비교해야 된다고 가정하고 작성
	// DB와 비교해야하므로 데이터 타입의 변수에다 request의 객체 값을 담아준다
    String username = request.getParameter("username");
    String userbirth = request.getParameter("userbirth");

    // DB 처리 ~~
    
    // < forward >	: request 객체 유지
    // pageContext.forward("object_result.jsp");
    
    // < ridirect >	: request 객체 재생성
    response.sendRedirect("object_result.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>