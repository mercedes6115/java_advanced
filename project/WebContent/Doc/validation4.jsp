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

	//정규표현식
	var regExp = /i/i; //var regExp = new RegExp('java','i');
	var str = document.loginForm.title.value;
	var res = regExp.exec(str);
	alert(res[0]);
	form.submit();
}
</script>
<form name="loginForm" >
제목 : <input type="text" name="title">
<input type="submit" onclick="CheckFrom()">
</form>
</body>
</html>