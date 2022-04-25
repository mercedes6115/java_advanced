<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="jdbcs.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String mtitle = request.getParameter("mtitle");
	String mcon = request.getParameter("mcon");
	String userid = "test";
	
	MemoAppDAO dao = new MemoAppDAO();
	dao.insert(userid,mtitle,mcon);
	response.sendRedirect("main.jsp");
%>