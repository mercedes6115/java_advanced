<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="test1.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<table class="table">
  <thead>
    <tr>
      <th scope="col">학번</th>
      <th scope="col">학과</th>
      <th scope="col">이름</th>
      <th scope="col">주소</th>
      <th scope="col">번호</th>
    </tr>
  </thead>
		<% 
			ArrayList<Board1DTO> boards =(new Board1DAO()).getList();
			for(Board1DTO board :boards){
		%>
<tbody>
    <tr>
      <th scope="row"><%=board.getNum() %></th>
      <td><%=board.getDapart() %></td>
      <td><%=board.getName()%></td>
      <td><%=board.getAddress()%></td>
      <td><%=board.getPhone()%></td>
  
    </tr>
</tbody>			
			<%
			}
			%>
			</table>
		
		<hr>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>