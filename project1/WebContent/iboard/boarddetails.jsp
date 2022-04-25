<%@page import="jdbc.*"%>
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
<%!// 선언문
	String title = "자유게시판";%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ include file = "/_header.jsp" %>
<div class="container">
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>
	</div>
<% //글을 보는거는 로그인 세션없어도 볼수 있게하기..
//id = 로그인한 사람 고유번호 123
	String id = (String) session.getAttribute("uid"); //로그인 한 사람의 id=buser
	if(id==null){
		id = (String) session.getAttribute("uid");
	}
	
	
	int bid = 0; //글의 고유번호
	if(request.getParameter("bid")!=null){ //69  =bid
		bid = Integer.parseInt(request.getParameter("bid"));
	}
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
		<% 
			String bcon = request.getParameter("bcon");
			BoardDTO board =(new BoardDAO()).getDetail(bcon);
			String img = board.getBimg(),imgstr=null;
			if(img != null){
				 imgstr = "<img src='/images/" + img +"'  width=140 height=100 positon:center>";
			}else{
				imgstr=null;
			}
		
		%>
<table class="table">

 <tr><h1>제목 : <%= board.getBtitle()%></h1></tr>
 <br>
 <br>
 <% if (imgstr!=null){ %>
 
 <center> <tr>이미지 : <%=imgstr %></tr></center>
 <%} %>
  <br>
 <br>
 <tr>내용 : <%=board.getBcon() %></tr>
  <br>
 <br>
   <tr>작성자 : <%= board.getBuser()%></tr>
</table>

		<div class="col-sm-offset-5 col-sm-5">
			<a href="/iboard/board.jsp" class="btn btn-primary">목록</a>
			<%
				// 로그인이 되어있고, 글의 작성자와 로그인된 네임이 같으면 수정 삭제 보이기.
			if (id != null && request.getParameter("buser").equals(id)) {
			%>
			<a href="boardupdate.jsp?bid=<%=bid%>&bcon=<%=bcon %>&buser=<%=board.getBuser() %>" class="btn btn-primary">수정</a>
			<a onclick ="return confirm('정말로 삭제하시겠습니까?')" href="boarddeletedb.jsp?bid=<%=bid%>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
		</div>

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