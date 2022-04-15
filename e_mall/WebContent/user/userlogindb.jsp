<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.*" %>
<%@ page import = "jdbc.*" %>


<%
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");

	UserDAO user = new UserDAO();
	
	int result = user.login(uid,upw);
	
	if(result == 1){ // 아이디가 존재하지 않는경우
		response.sendRedirect("useradd.jsp");	
	}else if(result == 2){ // 비번이 틀린경우
		response.sendRedirect("userlogin.jsp");
	}else{
		//로그인 성공 -> 세션설정 제품목록으로
		session.setAttribute("id", uid);
		response.sendRedirect("../product/product_list.jsp");
 	}

%>