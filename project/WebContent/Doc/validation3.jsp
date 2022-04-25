<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 인지 여부 검사.</title>
</head>
<body>
<script type="text/javascript">
function CheckFrom() {
// 	alert("아이디 : "+document.loginForm.id.value+"\n"
// 			+ "비번 : "+ document.loginForm.pw.value);
// if(!isNaN(document.loginForm.id.value.substr(0,1))) {
	//첫글자가 소문자인지 확인.(유효성검사)
	var ch = loginForm.id.value.charAt(0);
	if((ch<'a' || ch >'z') && (ch>'A' || ch<'Z')&&(ch>'0'||ch<'9')){
	alert("아이디는 숫자로 시작할 수 없습니다.");
	document.loginForm.id.select();
	return;
}
	form.submit();
}
</script>
<form name="loginForm" action="Testdb.jsp">
아이디 : <input type="text" name="id">
비번: <input type="password" name="pw">
<input type="submit" onclick="CheckFrom()">
</form>
</body>
</html>