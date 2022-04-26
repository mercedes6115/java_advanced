<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>


<meta charset="UTF-8">
<title>게시물등록</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ include file = "/_header.jsp" %>
<%  ArrayList<BoardDTO> boardss =(new BoardDAO()).getList();
	int cnt=boardss.size();//총게시물수
	int pageSize=10;

	String pageNum = request.getParameter("pageNum");	
	if(pageNum == null){
		pageNum="1";
	}
	int currentPage=Integer.parseInt(pageNum);
	int startRow=(currentPage-1)*pageSize+1;
%>
	
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">	
<table class="table">
  <thead>
    <tr>
      <th scope="col">게시물번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
  	<div class="row" align=center>
		<% 
		ArrayList<BoardDTO> boards =(new BoardDAO()).getpageList(startRow,pageSize);
			for(BoardDTO board : boards){
				String img = board.getFimg(), imgstr=null;
				if(img != null){
					imgstr = "<img src='/images/" + img +"'  width=140 height=100 positon:center>";
				}else{
					imgstr=null;
				}
		%>
    <tr>
      <th scope="row"><%= board.getFid()%></th>
      <td><%= board.getFtitle()%></td>
      <td><a href="boarddetails.jsp?fcon=<%=board.getFcon()%>"><%= board.getFcon()%></td>
      <td><%= board.getFuser()%></td>
      <td><%= board.getFdate()%></td>
      <td></td>
    </tr>
			<%
			}
			%>
	
  </tbody>
  
</table>
<div id="page_control" align="center">
<%if(cnt != 0){
	int pageCount = cnt / pageSize + (cnt%pageSize == 0?0:1);
	int pageBlock = 7;
	int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
	int endPage = startPage + pageBlock-1;
	if(endPage>pageCount){
		endPage = pageCount;
	}
	%>
	<a href="board.jsp?pageNum=<%=1%>">처음으로</a>
	<%
	if(startPage>pageBlock){
	%>
	<a href="board.jsp?pageNum=<%=startPage-pageBlock%>">이전 </a>
	<% } %>
	<%for(int i=startPage;i<=endPage;i++){ %>
	<a href="board.jsp?pageNum=<%=i%>"><%=i %></a>
	<%} %>
	<%if(endPage<pageCount){ %>
		<a href="board.jsp?pageNum=<%=startPage+pageBlock%>">다음 </a>
		<%} %>
		<a href="board.jsp?pageNum=<%=pageCount%>">마지막으로 </a>
		<%} %>

</div>
  <a href="boardadd.jsp">글쓰기</a>
</div>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<%@ include file = "/_footer.jsp" %>
</html>