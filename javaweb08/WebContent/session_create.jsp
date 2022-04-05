<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 속성 설정</title>
</head>
<body>
<b>세션 속성 설정</b><br>
<%
session.setAttribute("id","admin");
session.setAttribute("name","관리자");
out.print("세션 속성 설정 완료! <br>");

%>
session ID: <%=session.getAttribute("id") %><br>
session name:<%=session.getAttribute("name") %><br>

<p><a href="session_check.jsp">[세션 확인]</a>
<p><a href="session_delete.jsp">[세션 삭제]</a>
</body>
</html>