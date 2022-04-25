<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="jdbcs.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* request객체에서 받아온 파라미터값 저장 */
	String city = request.getParameter("city");
	String zipcode = request.getParameter("zipcode");
	/* out객체를 통해 응답 */
	out.println("도시: " + city);
	out.println("우편주소: " + zipcode);
%>
	<form action = "commentadd.jsp" method="post">
	<div class="input-group mb-3">
  	<input type="text" name="mcon" class="form-control" placeholder="Write a short comment">
  	</div>
  	<button>댓글등록</button>
  	</form>
</body>
</html>