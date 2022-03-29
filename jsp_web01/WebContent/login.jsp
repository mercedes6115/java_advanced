<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- <% %>사이에 java를 작성  -->
<% // 여기서 부터는 자바 문법을 적용
String uid = request.getParameter("id");
String upw = request.getParameter("pw");
%>






<h3>User ID: <%=uid %></h3><br> <!-- uid 부분이 표현식 -->
<h3>User PW: <%=upw %></h3><br>
<h5>By 19배본영</h5>
</body>
</html>