<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>쿠키 확인</b><br>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null){
	for(int i=0; i<cookies.length;i++){
		String name = cookies[i].getName();
		String value = cookies[i].getValue();
		int age = cookies[i].getMaxAge();
		
		out.print("쿠키 이름: "+name+"<br>");
		out.print("쿠키 값: "+value+"<br>");
		out.print("쿠키 유효시간: "+age+"<p>");
	}
}
%>

<p><a = href="cookie_create.jsp">[쿠키 생성성]</a><br>
<p><a href="cookie_delete.jsp">[쿠키 삭제]</a>
</body>
</html>