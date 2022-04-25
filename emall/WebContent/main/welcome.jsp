<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%@ include file="_header.jsp" %>

<%! //선언문
	String greeting = "welcome to e-mall";
	String tagline = "welcome to web market!!";
%>
<!-- 표현문 -->
	<div class="alert alert-secondary" role="alert" >
		<div class="container">
			<h1 class="display-3">
				<%=greeting%></h1>
		</div>
	</div>
	
	
	<div class="container">
	<div class="text-center">
	<h3><%=tagline %></h3>
	<%
		Date day = new Date();
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		String CT = hour + ":"+ minute+":"+second;
		out.print("현재 접속 시간 : " + CT+"<br>");
	%>
	
	</div>
	<hr>
	</div>
<%@ include file="_footer.jsp" %>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>