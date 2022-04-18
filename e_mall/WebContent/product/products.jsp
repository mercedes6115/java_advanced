<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbc.*"%>
<jsp:useBean id="productDAO" class ="jdbc.ProductDAO" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>상품 목록</h1>
<%
	ArrayList<ProductDTO> listOdProducts = productDAO.getAllProducts();
%>

<%
	for (int i=0; i< listOdProducts.size(); i++){
		ProductDTO product = listOdProducts.get(i);
		
	}
%>

<%=product.getPname() %>
<%=product.getPdesc() %>
<%=product.getPprice() %>원
<%
}
%>
</body>
</html>