<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<!-- id를 사용해보기 -->
	<form action="join.jsp" id="joinForm">
		아이디	<input type="text" name="userid" id="userid"><br>
		비밀번호	<input type="password" name="userpw" id="userpw"><br>
		이름		<input type="text" name="username" id="username"><br>
		전화번호	<input type="text" name="userphone" id="userphone"><br>
		<br>
		<input type="button" value="회원가입" onclick="sendit()">
	</form>
	
	<script>
		function sendit(){
			// 문제
			
			// validation check
			// 아이디 ""체크
			// 비밀번호 ""체크
			// 비밀번호 8자리 이상 체크
			// 이름 ""체크
			// 휴대폰""체크
			// form submit()
			
// 			[내풀이]
// 			let joinForm = document.joinForm;	// joinForm이 name값이 아니므로 그냥 쓸 수 없음 -> document.getElementById("joinForm"); 
// 			let idTag = joinForm.userid;
// 			let pwTag = joinForm.userpw;
// 			let nameTag = joinForm.username;
// 			let phoneTag = joinForm.userphone;
			
// 			if(idTag.value == ""){
// 				alert("아이디를 입력해주세요")
// 				idTag.focus();
// 				return false;
// 			}
// 			if(pwTag.value == ""){
// 				alert("비밀번호를 입력해주세요")
// 				pwTag.focus();
// 				return false;
// 			}
// 			if(pwTag.value < 8){
// 				alert("비밀번호는 8자리 이상 입력해주세요")
// 				pwTag.focus();
// 				return false;
// 			}
// 			if(nameTag.value == ""){
// 				alert("이름을 입력해주세요")
// 				nameTag.focus();
// 				return false;
// 			}
// 			if(phoneTag.value == ""){
// 				alert("핸드폰번호를 입력해주세요")
// 				phoneTag.focus();
// 				return false;
// 			}
			
// 			[강사님]
			// 변수 지정 (해도되고 안해도되고)
			let joinForm = document.getElementById("joinForm");
			// getElementById로 바로 가져오기
			let idTag = document.getElementById("userid");
			let pwTag = document.getElementById("userpw");
			// 변수 사용해서 가져오기
			let nameTag = joinForm.username;
			let phoneTag = joinForm.userphone;
			
			if(idTag.value == ""){
				alert("아이디를 입력해주세요");
				idTag.focus();
				return false;
			}
			if(pwTag.value == ""){
				alert("비밀번호를 입력해주세요");
				pwTag.focus();
				return false;
			}
			if(pwTag.value.length < 8){
				alert("비밀번호는 8자리 이상 입력해주세요");
				pwTag.focus();
				return false;
			}
			if(nameTag.value == ""){
				alert("이름을 입력해주세요");
				nameTag.focus();
				return false;
			}
			if(phoneTag.value == ""){
				alert("핸드폰번호를 입력해주세요");
				phoneTag.focus();
				return false;
			}
			// form submit()
			joinForm.submit();
		}
	</script>
</body>
</html>