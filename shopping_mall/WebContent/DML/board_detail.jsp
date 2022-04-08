<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<%@page import="dbConnectClose.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>

<body>

<% 	
	String id=request.getParameter("id");
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;
	conn = DBconnectClose.getConnection();
	String sql = "SELECT * FROM board WHERE board_id=?";
	pstmt.setString(1, id);
	pstmt = conn.prepareStatement(sql);	   
	rset = pstmt.executeQuery(); 
	rset.next(); 
	String content= rset.getString("board_content");

%>
  </tbody>
</table>
<p><%=content %></p>


<%
DBconnectClose.resourceClose(rset, pstmt, conn);
%>
</body>
</html>