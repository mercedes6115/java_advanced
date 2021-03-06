<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="jdbcs.*" %>
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
<title>상품목록</title>
</head>
<%! //선언문  !를붙이면 전역변수로 
	String title = "e-mall 상품목록";
	String tagline = "Welcome to Web Market!!!";
%>
<body align="center">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%@ include file = "/_header.jsp" %>
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
			<div class ="text-center">
				<%=title%>
			</h1>
			</div>
		</div>

	<div class="container">
		<div class="row" align=center>
		<% 
			ArrayList<ProductDTO> products =(new ProductDAO()).getList();
			for(ProductDTO product : products){
				String img = product.getPimgs(), imgstr=null;
				if(img != null){
					imgstr = "<img src='../images/" + img +"'  width=340 height=300 positon:center>";
				}
		%>
			<div class="col-md-4">
				<img src="" style="width: 100%">
					<h3><%= product.getPname()%></h3>
					<h3><%= imgstr %></h3>
					<p><%= product.getPprice()%>원</p>
					<a href="productdetail.jsp?pid=<%=product.getPid()%>" class ="btn btn-info" role="button">상세정보</a>
					<a href="orderconfirm.jsp?pid=<%=product.getPid()%>&pprice=<%=product.getPprice()%>&pname=<%=product.getPname()%>" class ="btn btn-info" role="button">주문하기</a>
					
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<%@ include file = "/_footer.jsp" %>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>