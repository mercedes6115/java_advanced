<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서작성</title>
</head>
<body>
<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
<%@ include file = "/_header.jsp" %>
<form action="resumeadddb.jsp" method="post" enctype="multipart/form-data">
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">한글이름</span>
  <input type="text" name="k_name" class="form-control" placeholder="Korean-Name"  aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">영문이름</span>
  <input type="text" name="e_name" class="form-control" placeholder="English-Name"  aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">주민등록번호</span>
  <input type="text" name="reginum"class="form-control"  aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">생년월일</span>
  <input type="text" name="birthday"class="form-control" placeholder="0000-00-00"  aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">주소</span>
  <input type="text" name="address" class="form-control" placeholder="Username"  aria-describedby="basic-addon1">
</div>
<div class="mb-3">
	<label for="formFileSm" class="form-label">사진</label> 
	<input name="pimg" class="form-control form-control-sm" id="formFileSm" type="file">
</div>
<script>
  function add_ac() {
    var ac_table = document.getElementById('ac_table');
    // var row = my_tbody.insertRow(0); // 상단에 추가
    var row = ac_table.insertRow( ac_table.rows.length ); // 하단에 추가
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    cell1.innerHTML = '<input type="text" name="sch_name" class="form-control"  aria-describedby="basic-addon1">'
    cell2.innerHTML = '<input type="text" name="major" class="form-control"  aria-describedby="basic-addon1">'
    cell3.innerHTML = '<input type="text" name="enrolldate" class="form-control"  placeholder="0000-00-00"aria-describedby="basic-addon1">'
    cell4.innerHTML = '<input type="text" name="gradate" class="form-control" placeholder="0000-00-00" aria-describedby="basic-addon1">'
  }
</script>

<script>
  function add_we() {
    var we_table = document.getElementById('we_table');
    // var row = my_tbody.insertRow(0); // 상단에 추가
    var row = we_table.insertRow( we_table.rows.length ); // 하단에 추가
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    cell1.innerHTML = '<input type="text" name="sch_name" class="form-control"  aria-describedby="basic-addon1">'
    cell2.innerHTML = '<input type="text" name="major" class="form-control"  aria-describedby="basic-addon1">'
    cell3.innerHTML = '<input type="text" name="enrolldate" class="form-control"  placeholder="0000-00-00"aria-describedby="basic-addon1">'
    cell4.innerHTML = '<input type="text" name="gradate" class="form-control" placeholder="0000-00-00" aria-describedby="basic-addon1">'
  }


</script>
<table class="table">
  <thead>
    <tr>
      <th scope="col">학교명</th>
      <th scope="col">전공</th>
      <th scope="col">입학일자</th>
      <th scope="col">졸업일자</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><input type="text" name="sch_name" class="form-control"  aria-describedby="basic-addon1"></td>
      <td><input type="text" name="major" class="form-control"  aria-describedby="basic-addon1"></td>
      <td><input type="text" name="enrolldate" class="form-control"  placeholder="0000-00-00"aria-describedby="basic-addon1"></td>
      <td><input type="text" name="gradate" class="form-control" placeholder="0000-00-00" aria-describedby="basic-addon1"></td>
    </tr>
  </tbody>
      <tbody id="ac_table"></tbody>
</table>
  <button type="button" onclick="add_ac()">학력추가</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">자격증명</th>
      <th scope="col">등급</th>
      <th scope="col">취득일</th>
      <th scope="col">발급기관</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><input type="text" name="certi_name" class="form-control"   aria-describedby="basic-addon1"></td>
      <td><input type="text" name="grade" class="form-control"   aria-describedby="basic-addon1"></td>
      <td><input type="text" name="gain_date" class="form-control"  placeholder="0000-00-00" aria-describedby="basic-addon1"></td>
      <td><input type="text" name="issue_org" class="form-control"  aria-describedby="basic-addon1"></td>
    </tr>
  </tbody>
      <tbody id="we_table"></tbody>
</table>
  <button type="button" onclick="add_we()">자격증추가</button>
  <br>
<input type="submit"  class="btn btn-primary" value="등록">

</form>

<%@ include file = "/_footer.jsp" %>
</div>
</body>
</html>