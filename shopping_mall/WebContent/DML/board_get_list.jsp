<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<%@page import="dbConnectClose.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>

<body>

<% 	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;
	conn = DBconnectClose.getConnection();
	String sql = "SELECT * FROM board ORDER BY board_join_date DESC";
	pstmt = conn.prepareStatement(sql);	   
	rset = pstmt.executeQuery(); 
%>	

<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
<%
	while(rset.next()){ //true인 동안 
		String board_id = rset.getString("board_id");
		String board_name = rset.getString("board_name");
		String board_title = rset.getString("board_title");
		String board_join_date = rset.getString("board_join_date");
%>

    <tr>
      <th><%=board_id %></th>
      <td><%=board_name %></td>
      <td><a href="board_detail.jsp?=<%=board_id %>" ><%=board_title %></td>
      <td><%=board_join_date %></td>
    </tr>
<% 	
	}
%>
  </tbody>
</table>



<%
DBconnectClose.resourceClose(rset, pstmt, conn);
%>
</body>
</html>