<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

// 	파라미터를 받아오기
	String ansStr = request.getParameter("ans");
	
// 	[내풀이]	
// 	int ans = 0;

// 	if(ansStr != null && !ansStr.equals("")){
// 		ans = Integer.parseInt(ansStr);
// 	}
	
// 	[강사님]	: html에는 최대한 자바 로직을 타지 않게 만드는 것이 좋다
	String result = null;

	if(ansStr == null || ansStr.equals("")){
		result = "응답 내용이 없습니다";
	}else{
		int user_select = Integer.parseInt(ansStr);
		
		if(user_select == 300){
			result="정답입니다";
		}else{
			result="정답이 아닙니다";
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 		[내풀이] -->	
<%-- 	<% --%>
<!-- 		if(ans == 300){ -->
<!--  	%> -->
<!-- 		<div><h1>응답결과</h1></div> -->
<!-- 		<div>정답입니다</div> -->
<%--  	<%  --%>
<!-- 		}else{ -->
<!--  	%> -->
<!-- 		<div><h1>응답결과</h1></div> -->
<!-- 		<div>정답이 아닙니다</div> -->
<%--  	<% --%>
<!--  		} -->
<!--  	%>  -->

<!-- 		[강사님] -->
		<div><h1>응답결과</h1></div>
		<div><%=result%></div>
</body>
</html>