<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
// DB연결
	String url = "jdbc:mysql://localhost:3306/school";
	String id = "root";
	String pw = "a489348a!";
	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;
	conn = DriverManager.getConnection(url, id, pw);
	
	String sql = "SELECT * FROM emp";
	pstmt = conn.prepareStatement(sql);	   
	rset = pstmt.executeQuery(); 
%>	

<%
	while(rset.next()){ //true인 동안 
		String ID = rset.getString("ID");
		String name = rset.getString("name");
		String dept = rset.getString("dept");
	
%>
<tr><td colspan=2><hr></td></tr>
		<tr>
		<td><small><%=ID%></small></td>
		<td><small><%=name%></small></td></tr>
		<tr><td colspan=2><%=dept%></td></tr>

<% 	
	}
%>


</body>
</html>