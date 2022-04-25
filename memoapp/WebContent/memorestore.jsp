<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import ="jdbcs.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String mdone = request.getParameter("mdone");
	String mid = request.getParameter("mid");
	
	MemoAppDAO dao = new MemoAppDAO();
	dao.restore(mdone,mid);
	response.sendRedirect("main.jsp");
%>