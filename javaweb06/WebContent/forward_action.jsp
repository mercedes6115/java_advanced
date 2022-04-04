<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include forward action</title>
</head>
<body>
<b>forward action tag</b><br>

<%
	String msg = "forward action tag test";
%>
<jsp:forward page="inc_sum_for.jsp" />
<p>forward action tag</p>
메세지 출력: <%=msg %>

</body>
</html>