<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 작성</title>
</head>
<body>
<!-- CSS only -->

<%@ include file ="menu.jsp"%>
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<div class="alert alert-primary text-center" role="alert">
  학생 정보 입력
</div>
<form class="col-md-6" action="add_list.jsp" method="POST">

  <div class="col-md-6" >
    <label for="inputEmail4" class="form-label">학번</label>
    <input type="text" name="studentID" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">이름</label>
    <input type="text" name="name" class="form-control" id="inputPassword4">
  </div>
  
  <div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault1" value="남자">
  <label class="form-check-label" for="flexRadioDefault1">
    남
  </label>
  </div>
  <div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault2" value="여자" checked>
  <label class="form-check-label" for="flexRadioDefault2">
    여
  </label>
  </div>

  <div class="col-md-6">
    <label for="inputState" class="form-label">학년</label>
    <select id="inputState" name="year" class="form-select">
      <option selected>Choose...</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
  </div>

  <div class="col-6">
    <label for="inputAddress2" class="form-label">전공</label>
    <input type="text" name="dept" class="form-control" id="inputAddress2">
  </div>
  
  <div class="col-md-6">
    <label for="inputCity" class="form-label">주소</label>
    <input type="text" name="address" class="form-control" id="inputCity">
  </div>
  <br>
  <div class="col-12 text-center">
    <button type="submit" class="btn btn-primary">학생 등록</button>
  </div>
	</form>
</div>
   
   <!-- JavaScript Bundle with Popper -->

   
</body>
</html>