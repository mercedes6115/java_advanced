<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="jdbcs.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String ccon = request.getParameter("ccon");

	
	CommentDAO dao = new CommentDAO();
	dao.insert(ccon);
	response.sendRedirect("main.jsp");
%>