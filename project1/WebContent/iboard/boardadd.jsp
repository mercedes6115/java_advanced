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

<% //글을 보는거는 로그인 세션없어도 볼수 있게하기..
//id = 로그인한 사람 고유번호 123
	String id = (String) session.getAttribute("uid"); //로그인 한 사람의 id=buser
	if(id==null){
		id = (String) session.getAttribute("uid");
	}
	
	int bid = 0; //글의 고유번호
	if(request.getParameter("bid")!=null){ //28  =bid
		bid = Integer.parseInt(request.getParameter("bid"));
	}
	
%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
	<form action="boardadddb.jsp" method="post" enctype="multipart/form-data">

			<div class="form-group row">
				<label class="col-sm-2">작성자</label>
				<div class="clo-sm-3">
					<input type="text" name="buser" value="<%=id %>" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">게시물 제목</label>
				<div class="clo-sm-3">
					<input type="text" name="btitle" class="form-control">
				</div>
			</div>	
					
			<div class="form-group row">
				<label class="col-sm-2">게시물 내용</label>
				<div class="clo-sm-3">
					<textarea name="bcon" clos="50" rows="8" class="form-control"></textarea>
				</div>
			</div>
									
			<div class="mb-3">
				<label for="formFileSm" class="form-label">사진</label> 
				<input name="bimg" class="form-control form-control-sm" id="formFileSm" type="file">
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