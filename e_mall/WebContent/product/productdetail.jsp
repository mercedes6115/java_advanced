<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String uid = (String) session.getAttribute("id");
	if(uid == null){
		response.sendRedirect("/user/userlogin.jsp");
		return;
	} // 로그인된사람만 진입 세션정보를 확인해서 로그인 상태인지 확인한후 진입 허용
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세정보</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">
<%@ include file = "/_header.jsp" %>
		<% 
			String pid = request.getParameter("pid");
			ProductDTO product =(new ProductDAO()).getDetail(pid);
			String img = product.getPimgs();
			String imgstr = "<img src='../images/" + img +"'  width=340 height=300 positon:center>";
		%>
<figure class="figure-center">
  <img src="<%=imgstr %>" class="figure-img img-fluid rounded" style="width: 30% center" alt="...">
  <figcaption class="figure-caption text-center"><%=product.getPid()%></figcaption><br>
  <figcaption class="figure-caption text-center"><%=product.getPname() %></figcaption><br>
  <figcaption class="figure-caption text-center"><%=product.getPprice() %></figcaption><br>
  <figcaption class="figure-caption text-center"><%=product.getPmanu() %></figcaption><br>
  <figcaption class="figure-caption text-center"><%=product.getPcate() %></figcaption><br>
  <figcaption class="figure-caption text-center"><%=product.getPcondi() %></figcaption>
</figure>
<br>

<button type="button" class="btn btn-primary">구매하기</button>
<button type="button" class="btn btn-info">후기등록</button>
<button type="button" class="btn btn-alter">후기보기</button>
<button type="button" class="btn btn-primary">신고/문의</button>


<%@ include file = "/_footer.jsp" %>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>