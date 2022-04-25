<%@page import="jdbc.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String aid = request.getParameter("aid");
	String apw = request.getParameter("apw");
	
	AdminDAO dao = new AdminDAO();
	
	int result = dao.login(aid, apw);
	
	if (result == 1) { // 실패 케이스 1 아이디가 아예 없다.
		%>
		<script>
		alert("관리자가 아닙니다.");
		history.back();
		</script>
		<% return;
		
	} else if (result == 2) {
		%>
		<script>
		alert("비밀번호가 틀립니다.");
		history.back();
		</script>
		<% return;
		
	} else{
		//세션설정 -> 제품목록으로 보내자.
		session.setAttribute("aid", aid);
		response.sendRedirect("/manager/managemain.jsp");
	}




%>