<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="board.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>

<body align="center">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">

	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
			<div class ="text-center">

			</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row" align=center>
		<% 
			ArrayList<BoardDTO> boards =(new BoardDAO()).getList();
			for(BoardDTO board : boards){
				String img = board.getBimg(), imgstr=null;
				if(img != null){
					imgstr = "<img src='../images/" + img +"'  width=340 height=300 positon:center>";
				}
		%>
			<div class="col-md-4">
				<img src="" style="width: 100%">
					<h3><%= board.getBtitle()%></h3>
					<h3><%= imgstr %></h3>
					<p><%= board.getBcon()%>원</p>
					<a href="productdetail.jsp?pid=<%=board.getBid()%>" class ="btn btn-info" role="button">상세정보</a>
					
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>