<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="menu.jsp" %>
</head>

<body>
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%
out.print(session.getAttribute("studentID")+"("+session.getAttribute("name")+")님을 환영합니다");
session.invalidate();

out.print("<br>로그아웃 !");

%>
</div>
</body>
</html>