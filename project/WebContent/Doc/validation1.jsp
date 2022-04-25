<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
유효성 검사는 사용자가 입력한 데이터 값이 서버로 전송되기 전에 규칙에 맞는지 검사하여 검증하는 것.
사용자가 실수로 유효하지 않은 데이터 값을 입려하게 된면 부적합 하다고 판단하여 다시 임력하도록 알려준다.

아이디 검사, 패스워드 검사, 빈칸 여부....
<script type="text/javascript">
function CheckFrom() {
// 	alert("아이디 : "+document.loginForm.id.value+"\n"
// 			+ "비번 : "+ document.loginForm.pw.value);
if(document.loginForm.id.value.length < 3 || document.loginForm.id.value.length >10) {
	alert("아이디를 다시 입력해주세요. 너무 크거나 작습니다.");
	form.id.focus();
	return false;
}
if (document.loginForm.pw.value.length < 2){
	alert("비번을 2글자 이상으로 입력해주세요");
	form.pw.focus();
	return false;
}
	form.submit();
}
</script>
<form name="loginForm" action="">
아이디 : <input type="text" name="id">
비번: <input type="password" name="pw">
<input type="submit" onclick="CheckFrom()">
</form>
</body>
</html>