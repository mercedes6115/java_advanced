<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 생성</title>
</head>
<body>


<%
%>
<%@ include file ="DB_connect.inc" %>
<% 
   
   Connection conn = null;			// 연결 객체
   PreparedStatement pstmt = null;	// sql 구문 실행 객체 
   conn = DriverManager.getConnection(url, id, pw);
   String sql = "CREATE DATABASE university";
   pstmt = conn.prepareStatement(sql);	// sql 구문을 객체에 넣어서 
   pstmt.executeUpdate(); 	// sql 구문 객체 실행 

%>


</body>
</html>