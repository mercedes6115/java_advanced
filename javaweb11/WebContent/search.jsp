<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%
//JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
//DB연결
	String url = "jdbc:mysql://localhost:3306/university";
	String id = "root";
	String pw = "a489348a!";
	
	Connection conn = null;  // 디비 연결 객체
	PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
	ResultSet rset = null;
	conn = DriverManager.getConnection(url, id, pw);
	
	
	String sID=request.getParameter("studentID");
	String sql = "SELECT * FROM student where studentID = ?";
	pstmt = conn.prepareStatement(sql);	 
	pstmt.setString(1, sID);
	rset = pstmt.executeQuery(); 
	
	if(!rset.isBeforeFirst()){
		out.print("<script>alert('존재하지 않는 학생입니다');"
		+ "history.back();"
		+ "</script>"); // 이전 페이지로 보내줌 		
	}else{
	
	out.print("학생 정보 검색 성공 !<br>");
	rset.next(); //getString이전에 이렇게 써야 오류가 안남  한개인 경우는 이렇게 여러개인 경우 while로 묶어줌 
	String DB_ID= rset.getString("studentID");
	String DB_name= rset.getString("name");
	
	if(sID.equals(DB_ID)){
		session.setAttribute("studentID", DB_ID);
		session.setAttribute("name", DB_name);
	}
	
	out.print(session.getAttribute("studentID")+"("+session.getAttribute("name")+")님을 환영합니다");

	}
%>	


</div>

</body>
</html>