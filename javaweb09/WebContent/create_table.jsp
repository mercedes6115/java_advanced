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
<%
// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
// DB연결
	String url = "jdbc:mysql://localhost:3306/school";
	String id = "root";
	String pw = "a489348a!";	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체	
	conn = DriverManager.getConnection(url, id, pw);	
// 테이블 만들기 SQL

String sql = "CREATE TABLE emp("
			+"ID   varchar(20) NOT NULL,"
			+"name   varchar(20) NOT NULL,"
			+"dept   varchar(50)NULL DEFAULT NULL,"
			+"primary key(ID))";



	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate(sql);
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	

%>
</body>
</html>
