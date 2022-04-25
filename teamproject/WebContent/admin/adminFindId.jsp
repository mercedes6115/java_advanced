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

<script>
function id_search() { 
 	var frm = document.idfindscreen;

 	if (frm.aname.value.length < 1) {
	  alert("이름을 입력해주세요");
	  return;
	 }

	 if (frm.aphone.value.length != 11) {
		  alert("핸드폰번호를 정확하게 입력해주세요");
		  return;
	 }

 frm.method = "post";
 frm.action = "adminFindIdResult.jsp"; //넘어간화면
 frm.submit();  
 }
</script>

<div class="container-fluid vh-100" style="margin-top:100px">
<div class="rounded d-flex justify-content-center">
                    <div class="col-md-4 col-sm-12 shadow-lg p-5 bg-light">
                        <div class="text-center">
<form name="idfindscreen" method = "POST">
			<div class="text-center">
                            <h3 class="text-primary">휴대폰 번호로 아이디 찾기</h3>
                        </div>
		<section class = "form-search">
			<div class = "find-name">
				<label>가입한 이름 </label>
				<input type="text" name="aname" class = "btn-name" placeholder = "등록한 이름">
			<br>
			</div>
			<div class = "find-phone">
				<label>휴대폰 번호 </label>
				<input type="text" onKeyup = "addHypen(this);" name="aphone" class = "btn-phone" placeholder = "'-'없이 입력">
			</div>
			<br>
	</section>
	<div class ="btnSearch">
	<button class="btn btn-warning text-center mt-2" name="enter" type="submit" onClick="id_search()"> 찾기
	</button>
	<button class="btn btn-danger text-center mt-2" name="calcle" type="submit" onClick="history.back()"> 취소
	</button>
		
 	</div>
 </form>
</div>
</div>
</div>
</div>

<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
    </body>
</body>
</html>