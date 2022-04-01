<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 목록 출력</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
// DB연결
	String url = "jdbc:mysql://localhost:3306/univ";
	String id = "root";
	String pw = "a489348a!";
	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;
	conn = DriverManager.getConnection(url, id, pw);
	
	String sql = "SELECT * FROM student";
	pstmt = conn.prepareStatement(sql);	   
	rset = pstmt.executeQuery(); 
%>	

<form>
<table>
<caption>학생 목록</caption>
<tr>
<th>학번</th>
<th>이름</th>
<th>전공</th>
</tr>
<%
	while(rset.next()){ //true인 동안 
		String hakbun = rset.getString("hakbun");
		String name = rset.getString("name");
		String dept = rset.getString("dept");
	
%>

<tr>
	<td><%=hakbun %></td>		
	<td><%=name %></td>		
	<td><%=dept %></td>		
</tr>		
<% 	
	}
%>

</table>
</form>


</body>
</html>