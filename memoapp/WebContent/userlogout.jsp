<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
session.invalidate();
out.print("<script> alert('๋ก๊ทธ์์!!'); location.href='userlogin.jsp'</script>");

%>