<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //글을 보는거는 로그인 세션없어도 볼수 있게하기..
//id = 로그인한 사람 고유번호 123
	String id = (String) session.getAttribute("uid"); //로그인 한 사람의 id=buser
	if(id==null){
		id = (String) session.getAttribute("uid");
	}
%>

<%@ include file = "/_header.jsp" %>
<% 
	String jtitle = request.getParameter("jtitle");
	
	JobDTO job =(new JobDAO()).getDetail(jtitle);
%>
<a class="btn" href="resume_check.jsp?ufilename=<%=job.getJfile()%>"><%=job.getJuser()%>의 이력서 확인하기</a>

	<div class="col-sm-offset-5 col-sm-5">
		<a href="/jboard/jobboard.jsp" class="btn btn-primary">목록</a>
		<%
			// 로그인이 되어있고, 글의 작성자와 로그인된 네임이 같으면 수정 삭제 보이기.
		if (id != null && request.getParameter("juser").equals(id)) {
		%>
		<a href="resumeget.jsp?jid=<%=job.getJid()%>&jcon=<%=job.getJcon()%>&juser=<%=job.getJuser()%>"	class="btn btn-primary">수정</a> 
		<a onclick="return confirm('정말로 삭제하시겠습니까?')"	href="jobboarddeletedb.jsp?juser=<%=job.getJuser()%>" class="btn btn-primary">삭제</a>
		<%
			}
		%>
	</div>
</body>
</html>