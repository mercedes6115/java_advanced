<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DAO.*" %>
<%@page import="DTO.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단톡방</title>
</head>
<body>
<form action = "feedadd.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height =40><b>톡작성</b></td></tr>
<tr><td align =right>아이디</td>
	<td><input type ="text" name="id" placeholder="글작성자 아이디" required></td></tr>
<tr><td align =right>글작성</td>
	<td><textarea name="content" rows =3 cols=20></textarea></td></tr>	
<tr><td colspan=2 align=center height =40><input type="submit" value="등록"></td></tr>
	
</table>
</form>


<table align=center>
<tr><td colspan=2>톡보기</td></tr>
<% 
ArrayList<FeedDTO> feeds = (new FeedDAO()).getList();
for (FeedDTO feed: feeds) {
%>
<tr><td colspan=2><hr></td></tr>
<tr><td><%=feed.getId()%></td>
	<td><%=feed.getTs()%></td></tr>
<tr><td colspan=2><hr><%=feed.getContent() %></td></tr>

<% 
}
%>


</table>
</body>
</html>