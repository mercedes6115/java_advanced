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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">

<%@ include file = "/_header.jsp" %>
<form action="useradddb.jsp" method="post">

<div class="form-floating mb-3">
  <input type="text" class="form-control" name= "uid" >
  <label for="floatingInput">ID</label>
</div>

<div class="form-floating">
  <input type="password" class="form-control" name="upw" id="floatingPassword" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>

<div class="form-floating mb-3">
  <input type="text" class="form-control" name= "uname" id="floatingInput">
  <label for="floatingInput">사용자 이름</label>
</div>

<div class="form-floating mb-3">
  <input type="text" class="form-control" name= "uphone" id="floatingInput">
  <label for="floatingInput">폰번호</label>
</div>	
		
<div class="form-floating mb-3">
  <input type="text" class="form-control" name= "ubirth" id="floatingInput" placeholder="0000.00.00">
  <label for="floatingInput">생년월일</label>
</div>

<div class="form-floating mb-3">
  <input type="email" class="form-control" name= "uemail" id="floatingInput" placeholder="name@example.com">
  <label for="floatingInput">email주소</label>
</div>

<div class="form-floating mb-3">
  <input type="text" class="form-control" name= "uaddr" id="floatingInput" placeholder="name@example.com">
  <label for="floatingInput">주소</label>
</div>

<div class="form-group row">
	<label class="col-sm-2">성별</label>
				<div class="clo-sm-3">
					<div class="form-check">
						<input name ="ugender" class="form-check-input" type="radio" value="남자"
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault">남</label>
					</div>
					<div class="form-check">
						<input name ="ugender" class="form-check-input" type="radio" value="여지"
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault">여</label>
					</div>
				</div>
			</div>

		
<div class="form-group row" align="center">
	<div class="clo-sm-10">
				<input type="submit" class="btn btn-primary" value="회원가입">
	</div>
		</form>
</div>
	
<%@ include file = "/_footer.jsp" %>



</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>