<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
function CheckForm(){
/* 	alert("아이디 : " + document.LoginForm.id.value + "\n"+
			"비   번: "+ document.LoginForm.pw.value); */
	if(document.LoginForm.pw.value == ""){
		alert("비밀번호를 입력해주세요");
		document.LoginForm.pw.select();
	}

}

</script>
<form name="LoginForm">
아이디: <input type="text" name="id">
비   번: <input type="password" name="pw">
<input type="submit" onclick="CheckForm()">
</form>
</body>
</html>