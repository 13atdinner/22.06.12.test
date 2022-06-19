<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login_db.jsp" method="post" name="frm">
		<p>
			<label>아이디 : <input type="text" name="userid"></label>
		</p>
		<p>
			<label>비밀번호 : <input type="password" name="userpw"></label>	 <!-- 여기서 엔터누를시 sendit()호출 , 엔터누르고 있으면 안되니까 주의!-->
		</p>
		<input type="button" value="로그인" onclick="sendit();">
	</form>
	
	<script>
		function sendit(){
			let frm = document.frm;
			let userid = frm.userid;
			let userpw = frm.userpw;
			
			if(userid.value == ""){
				alert("아이디를 입력해주세요")
				userid.focus();
				return false;
			}
			if(userpw.value == ""){
				alert("비밀번호를 입력해주세요")
				userpw.focus();
				return false;
			}
		
			frm.submit();
		}
	</script>
</body>
</html>