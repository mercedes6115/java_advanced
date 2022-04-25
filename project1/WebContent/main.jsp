<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>
	
			
<div class="container" align="center">	
<div class="col-md-6 at-col at-main">
			<div class="row">
			<div class="col-sm-6">
			<div class="div-title-underbar">
				<a href="sellbuy/boardlist.jsp"><b>방 거래</b></a>
			</div>
			<table class="table table-hover">
  
  <tbody>
  			<%
			ArrayList<sellbuyDTO> sellbuys1 = (new sellbuyDAO()).getList5();
			
			   for (sellbuyDTO sellbuy1 : sellbuys1) {
			%>
    <tr>
   
      <td><%=sellbuy1.getSbtitle() %></td>
      <td><%=sellbuy1.getSbdate() %></td>
 
    </tr>
   
   <%} %>
  </tbody>
</table>
	<br><br>
			
	</div>
	
	
	
	<div class="col-sm-6">
	<div class="div-title-underbar">
				<a href="sellbuy/boardlist.jsp"><b>중고 거래</b></a>
			</div>
			<table class="table table-hover">
  
  <tbody>
  			<%
			ArrayList<sellbuyDTO> sellbuys2 = (new sellbuyDAO()).getList5();
			
			   for (sellbuyDTO sellbuy2 : sellbuys2) {
			%>
    <tr>
   
      <td><a href="sellbuy/boarddetail.jsp?bid=<%=sellbuy2.getSbid()%>"><%=sellbuy2.getSbtitle() %></a></td>
      <td><%=sellbuy2.getSbdate() %></td>
 
    </tr>
   
   <%} %>
  </tbody>
</table>
			
			
	</div>
	

<div class="col-sm-6">
			<div class="div-title-underbar">
				<a href="jboard/jobboard.jsp"><b>구직 게시판</b></a>
			</div>
			<table class="table table-hover">
  
  <tbody>
  			<%
			ArrayList<JobDTO> jobs = (new JobDAO()).getList5();
			
			   for (JobDTO job : jobs) {
			%>
    <tr>
      <td><a href="jboard/jobboarddetail.jsp?jtitle=<%=job.getJtitle()%>"><%=job.getJtitle() %></a></td>
      <td><%=job.getJdate() %></td>
 
    </tr>
   
   <%} %>
  </tbody>
</table>
			
	</div>
	
	
	
	
<div class="col-sm-6">
			<div class="div-title-underbar">
				<a href="iboard/board.jsp"><b>자유 게시판</b></a>
			</div>
			<table class="table table-hover">
  
  <tbody>
  			<%
			ArrayList<BoardDTO> frees = (new BoardDAO()).getList5();
			
			   for (BoardDTO free : frees) {
			%>
    <tr>
   
      <td><a href="iboard/boarddetails.jsp?bid=<%=free.getBid()%>"><%=free.getBtitle() %></a></td>
      <td><%=free.getBdate() %></td>
 
    </tr>
   
   <%} %>
  </tbody>
</table>
			
</div>



</div>
</div>
</div>


<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>