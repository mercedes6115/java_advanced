<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String mtitle = request.getParameter("mtitle");
	String mcon = request.getParameter("mcon");
	String userid = "test";
	
	MemoDAO dao = MemoDAO();
	dao.insert(mtitle,mcon,userid);
	response.sendRedirect("main.jsp");


%>