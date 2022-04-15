<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String uid = (String) session.getAttribute("id");
	if(uid == null){
		response.sendRedirect("../user/userlogin.jsp");
		return;
	} // 로그인된사람만 진입 세션정보를 확인해서 로그인 상태인지 확인한후 진입 허용
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%@ include file = "/_header.jsp" %>
<form action="../board/boardadddb.jsp" method="post">
<div class="form-floating mb-3">
  게시물 제목<input type="text" name="btitle" class="form-control" id="floatingInput">
  <label for="floatingInput"></label>
</div>
<div class="form-floating">
  게시물 내용<textarea class="form-control" name="bcon" id="floatingTextarea2" style="height: 100px"></textarea>
  <label for="floatingTextarea2"></label>
</div>
<button class="w-100 btn btn-lg btn-primary" type="submit">등록</button>

</form>
<%@ include file = "/_footer.jsp" %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>