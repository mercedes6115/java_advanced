<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="jdbcs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name=viewport content="width=device-width, initial-scale=1, user-scalabble=0">
</head>
<body>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">	
			<% 
			ArrayList<MemoAppDTO> memos =(new MemoAppDAO()).getdelList();
			for(MemoAppDTO memo :memos){
		%>	
	<div class="card">
  	<div class="card-header">
    Personal MemoApp
  	</div>
  	<div class="card-body">
    <h5 class="card-title"><%=memo.getMtitle()%></h5>
    <p class="card-text"><%=memo.getMcon() %></p>
	<p class="card-text"><%=memo.getMdate() %></p>
   	<a href ="memorestore.jsp?mdone=<%=memo.getMdone() %>&mid=<%=memo.getMid() %>" type="button" class="btn-btn-danger">삭제한 메모복구하기</a>
	</div>
  	</div>
  	<%
			}
  	%>
	</div>
	
	
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>	
</body>
</html>