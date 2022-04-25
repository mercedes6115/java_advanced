<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
	<%!// 선언문
	String title = "관리자페이지 메인";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>

	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%></h1>
		</div>
	</div>
	<div align="center">
		<div class="card text-center" style="width: 16rem;">
			<div class="card-body">
				<h3 class="card-title">유저관리</h3>
				<p class="card-text">유저목록을 불러옵니다. 유저 정보 확인 및 삭제를 할 수 있습니다.</p>
				<a href="manageuser.jsp" class="btn btn-primary">유저관리페이지</a>
			</div>
		</div>
		<br><br>
	
		<div class="card text-center" style="width: 16rem;">
			<div class="card-body">
				<h3 class="card-title">게시판 관리</h3>
				<p class="card-text">게시판을 관리합니다. 게시글 및 댓들을 삭제 할 수 있습니다.</p>
				<a href="manageboard.jsp" class="btn btn-primary">게시판 관리 페이지</a>
			</div>
		</div>
	</div>
	<br><br>



	<%@ include file="/_footer.jsp"%>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>