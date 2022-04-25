<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
</head>
<style>
div.button
{
   margin: auto;
}


</style>



<body>
<% //글을 보는거는 로그인 세션없어도 볼수 있게하기..
//id = 로그인한 사람 고유번호 123
	String id = (String) session.getAttribute("uid"); //로그인 한 사람의 id=buser
	if(id==null){
		id = (String) session.getAttribute("uid");
	}
%>
<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
<%@ include file = "/_header.jsp" %>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<a  class ="btn btn-primary" href="resume_download_4111.docx">이력서 다운받기</a>

<br>
<br>
<br>


<form action="fileUpload.jsp" name="fileForm" method="post" enctype="multipart/form-data">
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">작성자</span>
  <input type="text" name="juser" value="<%=id %>" class="form-control" placeholder="Username" aria-describedby="basic-addon1">

</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">제목</span>
  <input type="text" name="jtitle" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">간단한 설명</span>
  <input type="text" name="jcon" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
</div>
  <div class="col-sm-30">
파일명<input type="file" name="jfile" class="form-control form-control-sm" id="formFileSm" type="file">
</div>
<br>
<br>
<br>
<div class="input-group mb-3">
<div class="button">
<input class="btn btn-primary" type="submit" value="이력서 업로드">
	
</div>
</div>
</form>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%@ include file = "/_footer.jsp" %>
</div>
</body>

</html>