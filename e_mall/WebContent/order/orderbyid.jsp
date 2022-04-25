<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbcs.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 주문 확인</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">	


<table class="table tablr-striped  table-hover">
  <thead>
    <tr>
      <th scope="col">주문번호</th>
      <th scope="col">제품번호</th>
      <th scope="col">구매자ID</th>
      <th scope="col">제품명</th>
      <th scope="col">가격</th>
      <th scope="col">구매일</th>
      <th scope="col">평점</th>
      <th scope="col">후기</th>
      <th scope="col">진행상황</th>
    </tr>
  </thead>
  <tbody>
  		<% 
  		String ouid = request.getParameter("ouid");
		ArrayList<OrderDTO> orders =(new OrderDAO()).getStatus(ouid);
			for(OrderDTO order : orders){
		%>
		
	  <tr>
	  <td><%= order.getOid()%></td>
      <td><%= order.getOpid()%></td>
      <td><%= order.getOuid()%></td>
      <td><%= order.getOpname()%></td>
      <td><%= order.getOprice()%></td>
      <td><%= order.getOdate()%></td>
      <td><%= order.getOgrade()%></td>
      <td><%= order.getOcomm()%></td>
      <td><%= order.getOstatus()%></td>

    </tr>
		<%
		}
			%>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>