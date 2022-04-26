<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="jdbcs.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemoApp</title>
<meta name=viewport content="width=device-width, initial-scale=1, user-scalabble=0">
</head>
<body>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">	
	<div style="float:left;width:66%;">
	<h1>Personal Memo Writing Application</h1>
	</div>
	<%@ include file ="_headers.jsp" %>

	<form action="memoadddb.jsp" method="post">
	<div class="input-group mb-3">
  	<input type="text" name="mtitle" class="form-control" placeholder="Write a short title">
  	</div>
	<div class="input-group mb-3">
  	<input type="text" name= "mcon" class="form-control" placeholder="Write things you should do today">
  	</div>
  	<input type="submit" value="등록">
  	</form>
  	<br>
  	<br>
  	<br>
		<% 

			ArrayList<MemoAppDTO> memos =(new MemoAppDAO()).getList();
			for(MemoAppDTO memo :memos){
		%>	
	<div class="card">
  	<div class="card-header">
    Personal MemoApp
  	</div>
  	<div class="card-body">
    <h5 class="card-title"><%=memo.getMtitle()%></h5>
    <p class="card-text"><%=memo.getMcon()%></p>
	<p class="card-text"><%=memo.getMdate()%></p>
  	<a href ="memodel.jsp?mid=<%=memo.getMid()%>">delete</a>
  	<div align="right">
  	<button  type="button" onclick="sendRequest()">댓글달기</button>
  	<p id="text"></p>
  	</div>
	</div>
  	</div>
  	<%
			}
  	%>
	</div>			
</div>		
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
	
<script>
function sendRequest(){
	var httpRequest = new XMLHttpRequest();

	/* GET 방식 */
	/*
	httpRequest.open("GET", "request_ajax.jsp?city=Seoul&zipcode=88855", true);
	httpRequest.send();
	*/
	
	/* POST 방식 */
	httpRequest.open("POST", "request_ajax.jsp", true);
	//encoding은 암호화
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	//send메소드에 인수 전달
	httpRequest.send("city=Seoul&zipcode=55775");
	
	httpRequest.onreadystatechange = function(){
		// 요청과 응답에 성공했을 때
		if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
			// 응답 값을 받아온다.
			document.getElementById("text").innerHTML = httpRequest.responseText;
		}
	}
}

</script>
</body>
</html>