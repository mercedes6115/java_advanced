<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 메인 페이지 입니다</h1>
<%
String session_id = (String) session.getAttribute("id");
if(session_id == null) {
%>
<button class="btn btn-secondary text-center mt-2" align="center" type="submit" onclick="location.href='login.jsp'">로그인</button>
<%
} else {
%>
<button class="btn btn-secondary text-center mt-2" align="center" type="submit" onclick="location.href='logout.jsp'">로그아웃</button>

<%
}
%>
</body>
</html>