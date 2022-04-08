<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블 만들기</title>
</head>
<body>
<%@ include file ="DB_connect.inc" %>
<%
	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체	
	conn = DriverManager.getConnection(url, id, pw);	
// 테이블 만들기 SQL

String sql = "CREATE TABLE student("
			+"studentID   varchar(20) NOT NULL,"
			+"name   varchar(10),"
			+"gender varchar(10),"
			+"year tinyint,"
			+"dept   varchar(20),"
			+"address varchar(50),"
			+"primary key(studentID))";
	
	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate(sql);
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	

%>
</body>
</html>
