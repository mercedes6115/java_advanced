<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jobboard.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/_header.jsp" %>
<% 



	
	String jtitle = request.getParameter("jtitle");
	
	JobDTO job =(new JobDAO()).getDetail(jtitle);
%>
<a class="btn" href="resume_check.jsp?ufilename=<%=job.getJfile()%>"><%=job.getJuser()%>의 이력서 확인하기</a>
</body>
</html>