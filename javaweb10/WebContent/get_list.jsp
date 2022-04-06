<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 조회</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div class = "container bg-info shadow mx-auto mt-5 p-5 w-75">
<table class="table">
  <thead>
    <tr>
      <th scope="col">학번</th>
      <th scope="col">이름</th>
      <th scope="col">성별</th>
      <th scope="col">학년</th>
      <th scope="col">전공</th>
      <th scope="col">주소</th>
    </tr>
  </thead>
<% 
	request.setCharacterEncoding("UTF-8");
// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
// DB연결
	String url = "jdbc:mysql://localhost:3306/university";
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

<%
	while(rset.next()){ //true인 동안 
		String studentID = rset.getString("studentID");
		String name = rset.getString("name");
		String gender = rset.getString("gender");
		String year = rset.getString("year");
		String dept = rset.getString("dept");
		String address = rset.getString("address");
	
%>


<tbody>
    <tr>
      <th scope="row"><%=studentID %></th>
      <td><%=name %></td>
      <td><%=gender%></td>
      <td><%=year %></td>
      <td><%=dept %></td>
      <td><%=address %></td>
    </tr>
</tbody>
</div>
<% 	
	}
%>
<a href="register.jsp">[등록 페이지]</a>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>