<%@page import="jdbc.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>
	<%!// 선언문
	String title = "상세 보기";%>
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

	<%
		String sbid = request.getParameter("sbid");
		sellbuyDTO sellbuy = (new sellbuyDAO()).getDetail(sbid);
	%>


<div class="container my-3">
    <h3 class="border-bottom py-2"><%=sellbuy.getSbtitle() %></h3>

    <div class="col-ma-6">
            <div class="col-ma-5">
				<img src="/images/<%=sellbuy.getSbimage() %>" style= "width: 10%">
			</div>
            <p><b><%=sellbuy.getSbcontent() %></b></p>
    </div>			
    			
                    <p><%=sellbuy.getSbuser()%>&nbsp;&nbsp;<%=sellbuy.getSbdate()%> 
                    <hr>
            <a href="boardwrite.jsp" class="btn btn-info">글 작성</a>
            <a href="boardlist.jsp" class="btn btn-secondary">글 목록</a>
      
    
    </div>


	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>