
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbc.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단톡방</title>
<style>
	img { display: block; margin: 0px auto; }
</style>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<form action = "feedadd.jsp" method="post" enctype="multipart/form-data">


<table class="table table-dark table-striped" align=center>
<tr><td colspan=2 align=center height =40><b>톡작성</b></td></tr>

<tr><td align =center>아이디</td>
	<td><input type ="text" name="id" placeholder="글작성자 아이디" required></td></tr>
<tr><td align =center>글작성</td>
	<td><textarea name="content" rows =3 cols=20></textarea></td></tr>
	<tr><td align=center>이미지</td>

	<td><input type="file" name="imgs"></td></tr>
<tr><td colspan=2 align=center height =40><input type="submit" value="등록"></td></tr>
</table>
</form>
<table class="table table-dark table-striped" align=center>
<tr><td colspan=2>톡보기</td></tr>
<% 
ArrayList<FeedDTO> feeds = (new FeedDAO()).getList();
for (FeedDTO feed: feeds) {
	String img = feed.getImgs(), imgstr=null;
	if(img != null){
		imgstr = "<img src='images/" + img +"' width=340 positon:center>";
	}
%>
<tr><td colspan=2></td></tr>
<tr><td>ID: <%=feed.getId()%></td>
	<td>생성시간: <%=feed.getTs()%></td></tr>
<tr><td colspan=2><%=imgstr %></td></tr>
<tr><td colspan=2><hr>내용: <%=feed.getContent() %></td></tr>

<% 
}
%>
</table>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>