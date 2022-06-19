<%@page import="java.util.ArrayList"%>
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
// 		String arMsg[] = (String)session.getAttribute("arMsg");	
	
// 		for(int i=0; i<arMsg.length; i++){
// 			out.println(arMsg[i]);
// 		}
		
// 		[강사님]
		ArrayList<String> datas = (ArrayList)session.getAttribute("arMsg");	//Arraylist<String>를 그대로 쓰면 퍼포먼스 up!
		
		for(int i=0; i<datas.size(); i++){
			out.println(datas.get(i)+"<br>");
		}
	%>
</body>
</html>