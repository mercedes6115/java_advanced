<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<%request.setCharacterEncoding("utf-8"); %>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
	<%@ include file="/_header.jsp"%>
	<form action="productadddb.jsp" method="post" enctype="multipart/form-data">

			<div class="form-group row">
				<label class="col-sm-2">상품코드</label>
				<div class="clo-sm-3">
					<input type="text" name="pid" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="clo-sm-3">
					<input type="text" name="pname" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품가격</label>
				<div class="clo-sm-3">
					<input type="text" name="pprice" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품설명</label>
				<div class="clo-sm-3">
					<textarea name="pdesc" clos="50" rows="8" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="clo-sm-3">
					<input type="text" name="pmanu" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품분류</label>
				<div class="clo-sm-3">
					<select name="pcate" class="form-select" aria-label="Default select example">
						<option selected>상품분류</option>
						<option value="스마트폰">스마트폰</option>
						<option value="태블릿">태블릿</option>
						<option value="컴퓨터">컴퓨터</option>
						<option value="노트북">노트북</option>
						<option value="주변기기">주변기기</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품종류</label>
				<div class="clo-sm-3">
					<div class="form-check">
						<input name ="pcondi" class="form-check-input" type="radio" value="신상"
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 신상 </label>
					</div>
					<div class="form-check">
						<input name ="pcondi" class="form-check-input" type="radio" value="중고"
							id="flexCheckChecked" checked> <label
							class="form-check-label" for="flexCheckChecked">중고</label>
					</div>
					<div class="form-check">
						<input name ="pcondi" class="form-check-input" type="radio" value="재고"
							id="flexCheckChecked" checked> <label
							class="form-check-label" for="flexCheckChecked">재고</label>
					</div>
					<div class="form-check">
						<input name ="pcondi" class="form-check-input" type="radio" value="기타"
							id="flexCheckChecked" checked> <label
							class="form-check-label" for="flexCheckChecked">기타</label>
					</div>
				</div>
			</div>

			<div class="mb-3">
				<label for="formFileSm" class="form-label">제품사진</label> 
				<input name="imgs" class="form-control form-control-sm" id="formFileSm" type="file">
			</div>


			<div class="form-group row" align="center">
			<div class="clo-sm-10">
				<input type="submit" name="pimgs" class="btn btn-primary" value="등록">
				<input type="reset"  class="btn btn-danger" value="취소" >
			</div>
			</div>
	</div>
	</form>
		
	




<%@ include file = "/_footer.jsp" %>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>