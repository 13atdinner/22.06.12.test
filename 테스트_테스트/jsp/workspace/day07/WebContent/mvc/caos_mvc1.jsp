<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// MVC1 패턴	: 로직을 JSP에서 다 처리하고  결과값만을 출력

	// Controller 영역 (JSP)
	int num=0;
	String num_ = request.getParameter("num");
	
	if( num_ != null && !num_.equals("")){
		num = Integer.parseInt(num_);
	}

	String result = "";
	if( num%2 != 0){
		result = "홀수";
	}else{
		result = "짝수";
	}
%>
	<!-- view 영역(html 전체) -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Model 영역 -->
	<%=result %> 입니다
</body>
</html>