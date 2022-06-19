<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// MVC2 패턴	: M,V,C가 다 나뉘어져 있음

	// Controller 영역 (Java에 있음)
	
// 	int num=0;
// 	String num_ = request.getParameter("num");
	
// 	if( num_ != null && !num_.equals("")){
// 		num = Integer.parseInt(num_);
// 	}

// 	String result = "";
// 	if( num%2 != 0){
// 		result = "홀수";
// 	}else{
// 		result = "짝수";
// 	}
%>
	<!-- view 영역(html 전체) -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Model 영역 -->
	<%=request.getAttribute("result") %> 입니다
</body>
</html>