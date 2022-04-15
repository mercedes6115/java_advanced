<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbc.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<center>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
</head>
<body>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%@ include file = "/_header.jsp" %>

<%! //선언문  !를붙이면 전역변수로 
	String title = "게시판이 공사중입니다";
%>
<table class="table table-info" align=center>
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
			<div class ="text-center">
				<%=title%>
			</h1>
			</div>
	</div>
</table>

<table class="table">
  <thead>
    <tr>
      <th scope="col">게시물번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
    </tr>
  </thead>
		<% 
			ArrayList<BoardDTO> boards =(new BoardDAO()).getList();
			for(BoardDTO board :boards){
		%>
<tbody>
    <tr>
      <th scope="row"><%=board.getBid() %></th>
      <td><%=board.getBtitle() %></td>
      <td><%=board.getBcon()%></td>
      <td><%=board.getBuser()%></td>
      <td><a href="product/productdetail.jsp?pid=<%=board.getBcon()%>" class ="btn btn-info" role="button">상세정보</a></td>
    </tr>
</tbody>			
			<%
			}
			%>
			</table>
		
		<hr>



	
<%@ include file = "/_footer.jsp" %>
</div>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
</center>