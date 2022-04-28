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
String a = request.getParameter("from");
String b = request.getParameter("to");
String c = request.getParameter("subject");
String d = request.getParameter("format");
String e = request.getParameter("content");

out.print(a+"<br>");
out.print(b+"<br>");
out.print(c+"<br>");
out.print(d+"<br>");
out.print(e+"<br>");
%>
</body>
</html>