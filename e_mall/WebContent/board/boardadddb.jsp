<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jdbcs.*" %>
<% request.setCharacterEncoding("utf-8");


String bcon =request.getParameter("bcon");
String btitle =request.getParameter("btitle");
String buser = (String)session.getAttribute("id");


 
BoardDAO dao = new BoardDAO();
dao.insert(btitle,bcon,buser); 

response.sendRedirect("../board/board.jsp");
%>