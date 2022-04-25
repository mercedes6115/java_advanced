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
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
	<form action="adddb.jsp" method="post">

			<div class="form-group row">
				<label class="col-sm-2">학번</label>
				<div class="clo-sm-3">
					<input type="text" name="num" value="" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">학과</label>
				<div class="clo-sm-3">
					<input type="text" name="depart" class="form-control">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="clo-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="clo-sm-3">
					<input type="text" name="address" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">연락처</label>
				<div class="clo-sm-3">
					<input type="text" name="phone" class="form-control">
				</div>
			</div>		
									
			<div class="form-group row" align="center">
				<div class="clo-sm-10">
					<input type="submit" name="bimgs" class="btn btn-primary" value="등록">
					<input type="reset"  class="btn btn-danger" value="취소" >
				</div>
			</div>
	</form>
	</div>
		
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>