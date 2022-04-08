<%@page import="dbConnectClose.DBconnectClose"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "java.sql.*" %>
<%@page import = "java.time.*" %>
<%@page import ="dbConnectClose.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% request.setCharacterEncoding("UTF-8"); %>
<title>Insert title here</title>
</head>
<body>
<%@ include file="/common/jsp_id_check_irud.inc"%>
<%
Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rset = null;

conn = DBconnectClose.getConnection();
String sql = "SELECT * FROM customer WHERE (cust_id=?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1,cust_id);
rset = pstmt.executeQuery();

if(rset.next()){    // ID가 중복 
	out.print("<script>alert('사용할수없는 ID입니다')"
			+"history.back();"
			+"</script>");
}else{
	%>	
	<%@ include file ="/common/jsp_sql_db_set_iu.inc" %>
	<% 
	sql ="INSERT INTO customer VALUES(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, cust_id);
	pstmt.setString(2, cust_pw);
	pstmt.setString(3, cust_name);
	pstmt.setString(4, cust_ph);
	pstmt.setString(5, cust_addr);
	pstmt.setString(6, cust_gender);
	pstmt.setString(7, cust_email);
	pstmt.setString(8, LocalDate.now().toString());
	
	pstmt.executeUpdate();
	DBconnectClose.resourceClose(rset,pstmt,conn);
	}	
%>



</body>
</html>