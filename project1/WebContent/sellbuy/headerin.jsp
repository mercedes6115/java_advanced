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
  <option selected>카테고리</option>
  <option value="/sellbuy/boardlist.jsp">전체</option>
  <option value="/sellbuy/boardclothall.jsp">의류/악세사리</option>
  <option value="/sellbuy/boardfurnall.jsp">가구</option>
  <option value="/sellbuy/boardpetall.jsp">애완동물</option>
  <option value="/sellbuy/boarditall.jsp">전자제품</option>
  <option value="/sellbuy/boardmcall.jsp">악기/음반</option>
  <option value="/sellbuy/boardtkall.jsp">티켓/상품권</option>
  <option value="/sellbuy/boardcmall.jsp">화장품/미용</option>
  <option value="/sellbuy/boardbkall.jsp">도서/문화/교재</option>
  <option value="/sellbuy/boardelall.jsp">기타제품</option>
  <option value="/sellbuy/boardfree.jsp">무료드림</option>
</select>


</body>
</html>