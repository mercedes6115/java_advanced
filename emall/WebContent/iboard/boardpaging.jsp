<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbc.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>


<meta charset="UTF-8">
<title>게시물등록</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<% String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum="1";
	}

 	int currentPage=Integer.parseInt(pageNum);
/* 	int startRow=(currentPage-1)*5+1; */
	out.print(currentPage);
/* 	out.print(startRow);  */
	
	%>	

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>