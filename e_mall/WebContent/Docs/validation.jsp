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
/* 	if(document.LoginForm.id.value == ""){
		alert("아이디를 입력해주세요");
		form.id.focus();
		return false;
	}
	if (!isNAN(document.LoginForm.pw.value.substr(0,1))){
		alert("비번맨앞에는 문자로 해주세여");
		document.LoginForm.id.select();
		return false;
	}else{
		form.submit();
	} */
	
	var reg = /Java/i; // var reg = new RegExp('java','i');
	var str = document.LoginForm.title.value;
	var result = reg.exec(str);
	alert(result[0])
}

</script>
<form name="LoginForm">
아이디: <input type="text" name="id">
비   번: <input type="password" name="pw">
<input type="submit" onclick="CheckForm()">
</form>
</body>
</html>