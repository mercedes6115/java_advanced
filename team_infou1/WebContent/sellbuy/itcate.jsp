<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<select aria-required = "true" onchange="if(this.value)location.href=(this.value);">
  <option selected>거래분류</option>
  <option value="/sellbuy/boarditall.jsp">전체</option>
  <option value="/sellbuy/boarditsell.jsp">팝니다</option>
  <option value="/sellbuy/boarditbuy.jsp">삽니다</option>
</select>


</body>
</html>