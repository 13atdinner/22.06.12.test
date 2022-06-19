/**
 * 
 */
// 회원가입 폼 validation check
// 아이디""처리
// 아이디 5자리 이상, 16자리 미만
// 비밀번호""처리
// 비밀번호 8자리 이상
// 비밀번호, 비밀번호 확인 동일한지
// 이름이""처리
// 휴대폰번호 ""처리

	function sendit(){
		let frm = document.joinForm;
		let userid = frm.userid;						// 변수명과 value값은 맞춰주는게 좋다
		let userpw = frm.userpw;
		let userpw_re = frm.userpw_re;
		let username = frm.username;
		let userphone = frm.userphone;
		
		if(userid.value ==""){
			alert("아이디를 입력해주세요")
			userid.focus();
			return false;
		}else if(userid.value.length < 5 || userid.value.length > 15){
			alert("아이디는 5자리 이상, 16자리 미만으로 입력해주세요")
			userid.focus();
			return false;
		}
		if(userpw.value ==""){
			alert("비밀번호를 입력해주세요")
			userpw.focus();
			return false;
		}else if(userpw.value.length < 8){
			alert("비밀번호는 8자리 이상 입력해주세요")
			userpw.focus();
			return false;
		}
		if(userpw_re.value != userpw.value){
			alert("비밀번호가 동일하지 않습니다")
			userpw_re.focus();
			return false;
		}
		if(username.value ==""){
			alert("이름을 입력해주세요")
			username.focus();
			return false;
		}
		if(userphone.value ==""){
			alert("전화번호를 입력해주세요")
			userphone.focus();
			return false;
		}
		
		frm.submit();
	}
	