<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	
	UserDAO dao = new UserDAO();
	
	int result = dao.login(uid, upw);
	
	if (result == 1) { // 실패 케이스 1 아이디가 아예 없다.
		%>
		<script>
		alert("회원이 아닙니다.");
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
		session.setAttribute("uid", uid);
		response.sendRedirect("/main.jsp");
	}




%>