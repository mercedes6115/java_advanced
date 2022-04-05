<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 속성 확인</title>
</head>
<body>
<b>세션 속성 확인</b><br>
session ID: <%=session.getAttribute("id") %><br>
session name:<%=session.getAttribute("name") %><br>

<p><a href="session_create.jsp">[세션 생성]</a>
</body>
</html>