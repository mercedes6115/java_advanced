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
	<div class="container" align="Center">
	
		<form action="userdropdb.jsp" method="post">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" name="userid" class="form-control" required="required">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">암호</label>
				<div class="col-sm-3">
					<input type="password" name="userpw" class="form-control" required="required">
				</div>
			</div>
			
			<div class="form-group row" align="center">
				<div class="col-sm-6">
					<input type="submit" class="btn btn-primary" value="회원탈퇴" onclick="return confirm('정말 탈퇴하시겠습니까?')">
					<input type="reset" class="btn btn-danger" value="취소">
				</div>
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