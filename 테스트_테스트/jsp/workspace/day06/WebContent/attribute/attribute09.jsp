<%@page import="vo.User"%>
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
// 		[내풀이]
// 		User[] arUser = (User[])request.getAttribute("users");		
		
// 		for(int i=0; i<arUser.length; i++){
// 			for(int j=0; j<arUser[i].length; j++){		// 2차배열이 아니라 1차 배열이므로 사용 불가!
// 			out.println(arUser[i][j]+", ");
// 			}
// 			out.println("<br>");
// 		}
		
// 		[강사님]
		User[] arUser = (User[])request.getAttribute("users");		
		
		for(int i=0; i<arUser.length; i++){
			out.println(arUser[i].userid);
			out.println(arUser[i].username);
			out.println(arUser[i].age+"<br>");
		}
	%>
</body>
</html>