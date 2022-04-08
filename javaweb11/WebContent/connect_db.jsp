<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.sql.DataSource"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>
<%
//데이터베이스 연결 테스트

//드라이버 로드
   try {
   Class.forName("com.mysql.jdbc.Driver");
   out.print("JDBC Driver loading 성공!!<br>");
   } catch (ClassNotFoundException err) {
      out.print("JDBC Driver loading 실패!!<br>");
   }
   //DB 연결

   String url = "jdbc:mysql://localhost:3306/";
   String id = "root";
   String pw = "a489348a!";
   
   Connection conn = null;
   
   try {
      conn = DriverManager.getConnection(url, id, pw);
      out.print("SQL DB 연결 성공!! by 19배본영<br>");
   } catch (SQLException sqlerr) {
      out.print("SQL DB 연결 실패!!<br>");
   }finally{
	   // DB 연결 종료 
	   // 요즘은 필요 없지만 하휘 호환성을 위해서 관례적으로 작성해준다
	   if(conn != null){
		   try{
			   conn.close();
			   out.print("SQL DB 연결 종료!!<br>");
		   }catch(Exception conerr){
			   conerr.printStackTrace();
		   }
	   }
   }
%>
</body>
</html>