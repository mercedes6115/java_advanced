<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="jdbcs.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String mid = request.getParameter("mid");
	String userid = "test";
	
	MemoAppDAO dao = new MemoAppDAO();
	dao.delete(mid);
	response.sendRedirect("main.jsp");
%>