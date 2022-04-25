<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!// 선언문
	String title = "유저 삭제";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%></h1>
		</div>
	</div>

<div align="center">
	<h3>삭제 버튼을 누르면 유저 정보가 삭제되고 복구가 불가능합니다.</h3>
	<h5>정말 유저정보를 삭제하시겠습니까?</h5>
	<%
	String id = request.getParameter("uid");
	%>
	<p>삭제되는 아이디 : <%=uid %></p>
	<a href="userdeletedb.jsp?uid=<%=uid %>" type="button" class="btn btn-danger">삭제</a>
	<a href="manageuser.jsp" type="button" class="btn btn-danger">돌아가기</a>
</div>




<%@ include file="/_footer.jsp"%>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>