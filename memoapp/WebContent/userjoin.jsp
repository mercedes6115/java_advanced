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
	String title = "회원 등록";%>
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
		<form action="useradddb.jsp" method="post">

			<div class="form-group row">

				<label class="col-sm-2">아이디</label>				
				<div class="col-sm-3">
				<input type="text" name="userid" class="form-control" id="userid" >
				<div style="float:right;width:50%;">	
				<button  type="button" onclick="checkID()">ID 중복검사</button><p id="text"></p>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">암호</label>
				<div class="col-sm-3">
					<input type="password" name="userpw" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" name="username" class="form-control">
				</div>
			</div>
	<div class="col-sm-6">
					<input type="submit" class="btn btn-primary" value="등록"> 
					<input type="reset" class="btn btn-danger" value="취소">
	</div>
	</form>

	</div>
		

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

<%-- <script>
function checkID(){
	var httpRequest = new XMLHttpRequest();
	var userid = 
	/* GET 방식 */
	/*
	httpRequest.open("GET", "request_ajax.jsp?city=Seoul&zipcode=88855", true);
	httpRequest.send();
	*/
	
	/* POST 방식 */
	httpRequest.open("POST", "checkID_ajax.jsp", true);
	//encoding은 암호화
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	//send메소드에 인수 전달
	httpRequest.send("userid=<%userid%>");
	
	httpRequest.onreadystatechange = function(){
		// 요청과 응답에 성공했을 때
		if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
			// 응답 값을 받아온다.
			document.getElementById("text").innerHTML = httpRequest.responseText;
		}
	}
}
 --%>
</script>

</body>
</html>