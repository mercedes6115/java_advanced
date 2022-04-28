<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
	<%!// 선언문
	String title = "로그인";%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">	

<div class="container">
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>
	</div>

	<div class="container" align="Center">
		<form action="emailsend2.jsp" method="post">

			<div class="form-group row">
				<label class="col-sm-2">보내는사람</label>				
				<div class="col-sm-3">
				<input type="text" name="from" class="form-control" id="userid" >
			</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">받는사람</label>
				<div class="col-sm-3">
					<input type="text" name="to" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">제목</label>
				<div class="col-sm-3">
					<input type="text" name="subject" class="form-control">
				</div>
			</div>

			<div class="form-check">
  			<input class="form-check-input" type="radio" name="format" value="text">
  			<label class="form-check-label" for="flexRadioDefault1">
    		TEXT
  			</label>
			</div>

			<div class="form-check">
  			<input class="form-check-input" type="radio" name="format" value="html" checked>
  			<label class="form-check-label" for="flexRadioDefault2">
    		HTML
  			</label>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">본문</label>
				<div class="col-sm-3">
					<input type="textarea" name="content" cols ="60" rows="10">
				</div>
			</div>

	<div class="col-sm-6">
					<input type="submit" class="btn btn-primary" value="발송"> 
					<input type="reset" class="btn btn-danger" value="취소">
	</div>
	</form>

	</div>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>