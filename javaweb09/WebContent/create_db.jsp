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
//데이터베이스 연결 테스트

//드라이버 로드

   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3306/";
   String id = "root";
   String pw = "a489348a!";   
   Connection conn = null;			// 연결 객체
   PreparedStatement pstmt = null;	// sql 구문 실행 객체 
   conn = DriverManager.getConnection(url, id, pw);
   String sql = "CREATE DATABASE school";
   pstmt = conn.prepareStatement(sql);	// sql 구문을 객체에 넣어서 
   pstmt.executeUpdate(); 	// sql 구문 객체 실행 
   if(pstmt != null) pstmt.close();
   if(conn != null)conn.close();

%>


</body>
</html>