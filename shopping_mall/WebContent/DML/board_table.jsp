<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dbConnectClose.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 테이블 생성</title>
</head>
<body>
<%

	Connection conn=null;
	PreparedStatement pstmt = null;

	conn = DBconnectClose.getConnection();

	String sql="CREATE TABLE board("
			+"board_id			varchar(10) NOT NULL,"
			+"board_name		varchar(15),"
			+"board_title		varchar(100),"
			+"board_content		varchar(300),"
			+"board_join_date 	date,"
			+"primary key(board_id))";

	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	DBconnectClose.resourceClose(pstmt, conn);
%>
</body>
</html>