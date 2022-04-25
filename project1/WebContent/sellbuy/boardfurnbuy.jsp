<%@page import="jdbc.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
        
 
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<%!// 선언문
	String title = "중고거래";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>
	
	
	<div class="container">
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>
	</div>
    
<%  ArrayList<sellbuyDTO> sellbuyss =(new sellbuyDAO()).getfuby();
   int cnt=sellbuyss.size();//총게시물수
   int pageSize=5;

   String pageNum = request.getParameter("pageNum");   
   if(pageNum == null){
      pageNum="1";
   }
   int currentPage=Integer.parseInt(pageNum);
   int startRow=(currentPage-1)*pageSize+1;
%>
<div class="container my-3">
    <%@ include file="/sellbuy/headerin.jsp"%>	
     <%@ include file="/sellbuy/furncate.jsp"%>	
</div>
    
	<div class="container">
		<div class="row" align="center">
		

	  
<div class="container my-3">
    <table class="table">
        <thead>
        <tr class="table-dark">
            <th>번호</th>  
            <th>거래분류</th>
            <th>카테고리</th>
            <th>이미지</th>              
            <th>제목</th>          
            <th>작성자</th>
            <th>작성일시</th>
        </tr>
        </thead>
        <tbody>

		<%
		 ArrayList<sellbuyDTO> pagess =(new sellbuyDAO()).getbuyfurn(startRow,pageSize);
        for(sellbuyDTO pages : pagess){

			
				   
		%>
		

        <tr>

<td ><%=pages.getSbid() %></td>
<td ><%=pages.getSbclass() %></td>
<td ><%=pages.getSbcate() %></td>
<td width = 10%;><a href = "boarddetail.jsp?sbid=<%=pages.getSbid()%>"><img src="/images/<%=pages.getSbimage() %>" style= "width: 50%;"></td>
<td><a href = "boarddetail.jsp?sbid=<%=pages.getSbid()%>"><%=pages.getSbtitle() %></td>
<td><%=pages.getSbuser() %></td>
<td><%=pages.getSbdate() %></td>

        </tr>


<% } %>


        </tbody>
    </table>
    
    <a href="/sellbuy/boardwrite.jsp">글쓰기</a>
    
</div>



<div id="page_control" align="center">
<%if(cnt != 0){
   int pageCount = cnt / pageSize + (cnt%pageSize == 0?0:1);
   int pageBlock = 5;
   int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
   int endPage = startPage + pageBlock-1;
   if(endPage>pageCount){
      endPage = pageCount;
   }
   %>
   <a href="boardfurnbuy.jsp?pageNum=<%=1%>">처음으로</a>
   <%
   if(startPage>pageBlock){
   %>
   <a href="boardfurnbuy.jsp?pageNum=<%=startPage-pageBlock%>">prev</a>
   <% } %>
   <%for(int i=startPage;i<=endPage;i++){ %>
   <a href="boardfurnbuy.jsp?pageNum=<%=i%>"><%=i %></a>
   <%} %>
   <%if(endPage<pageCount){ %>
      <a href="boardfurnbuy.jsp?pageNum=<%=startPage+pageBlock%>">Next</a>
      <%} %>
      <a href="boardfurnbuy.jsp?pageNum=<%=pageCount%>">마지막으로</a>
      <%} %>
</div>

		



		</div>
		<hr>
	</div>









	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>