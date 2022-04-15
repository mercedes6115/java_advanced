<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ include file = "_header.jsp" %>
<%! //선언문  !를붙이면 전역변수로 
	String greeting = "Welcome to my e-MALL";
	String tagline = "Welcome to Web Market!!!";
%>
<!-- 표현문 -->

	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
			<div class ="text-center">
				<%=greeting%>
			</h1>
			</div>
		</div>
	</div>

		<div class="container">
		<div class ="text-center">
			<h3><%= tagline %></h3>
			<%
			Date day = new Date();
			int hour = day.getHours();
			int min = day.getMinutes();
			int sec = day.getSeconds();
			
			String CT = hour + ":" + min + ":" + sec;
			out.print("현재 접속시간 : "+ CT + "<br>");
			%>
			
		</div>
		<hr>
	</div>
	
	
	
		
		
<%@ include file = "_footer.jsp" %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>
