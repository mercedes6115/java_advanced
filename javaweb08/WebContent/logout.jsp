<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
out.print("세션 생성시간= "+session.getCreationTime()+"초<br>");
out.print("클라이언트의 해당세션 마지막 접근시간 = "+session.getLastAccessedTime()+"초<br>");
out.print("클라이언트의 해당세션 유지시간 = "+(session.getLastAccessedTime()-session.getCreationTime())+"초<br>");
out.print("클라이언트의 해당세션 유효시간 = "+session.getMaxInactiveInterval()+"초<br>");

session.removeAttribute("cust_id");
session.removeAttribute("cust_name");

out.print("로그아웃 하셨습니다");


%>
<a href="login_form.jsp">[로그인]</a><br>
session ID: <%=session.getAttribute("id") %><br>
session name:<%=session.getAttribute("name") %><br>

</body>
</html>