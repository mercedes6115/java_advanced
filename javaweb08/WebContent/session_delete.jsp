<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 삭제 확인</title>
</head>
<body>
<b>세션 속성 확인</b><br>
session ID: <%=session.getAttribute("id") %><br>
session name:<%=session.getAttribute("name") %><br>
<%

session.removeAttribute("id");
session.removeAttribute("name");
out.print("세션 속성 삭제하였습니다");
%>
<b>세션 속성 확인</b><br>
session ID: <%=session.getAttribute("id") %><br>
session name:<%=session.getAttribute("name") %><br>

<p><a href="session_check.jsp">[세션 확인]</a>
</body>
</html>