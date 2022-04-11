<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.*" %>
<% request.setCharacterEncoding("utf-8");


String uid = request.getParameter("id");
String ucontent = request.getParameter("content");

FeedDAO dao = new FeedDAO();
if(dao.insert(uid,ucontent)){
	response.sendRedirect("main.jsp");
}else{
	out.print("글 작성중 에러발생");
}

%>

