<%@page import="board.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세정보</title>
</head>
<style>

.feeling_div {
  display: flex;
  justify-content: center;
  align-items: center;
} 
.button-container {
  margin-left: 20px;
}
.feeling_a {
  background-color: #fff;
  border: 2px solid #2199e8;
  padding: 10px 20px;
  border-radius: 2px;
  color: #2199e8;
} 
</style>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
<%@ include file = "/_header.jsp" %>
		<% 
			String fcon = request.getParameter("fcon");
			BoardDTO board =(new BoardDAO()).getDetail(fcon);
			String img = board.getFimg(),imgstr=null;
			if(img != null){
				 imgstr = "<img src='/images/" + img +"'  width=140 height=100 positon:center>";
			}else{
				imgstr=null;
			}
		
		%>
<table class="table">

 <tr><h1><%= board.getFtitle()%></h1></tr>
 <br>
 <br>
 <% if (imgstr!=null){ %>
 
 <center> <tr><%=imgstr %></tr></center>
 <%} %>
  <br>
 <br>
 <tr><%=board.getFcon() %></tr>
  <br>
 <br>
   <tr><%= board.getFuser()%></tr>
</table>

  <div class="feeling_div">
			<div class="button-container like-container">
			    <button class="feeling_a">
			      <i class="fa fa-heart-o"> Like</i>    
			    </a>
			  </div>
			  <div class="button-container dislike-container">
			    <button class="feeling_a">
			      <i class="fa fa-heart"> Dislike</i>
			    </a>
			</div>
		</div>

<%@ include file = "/_footer.jsp" %>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>