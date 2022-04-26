<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbcs.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String username = request.getParameter("username");
	
	UserDAO dao = new UserDAO();
	
	int result = dao.delete(userid,userpw);
	if(result == 1){
		out.print("<script> alert('아이디가 없습니다!!'); location.href='userjoin.jsp'</script>");
		//response.sendRedirect("userjoin.jsp");
	}else if(result == 2){
		out.print("<script> alert('비밀번호가 틀립니다!!'); location.href='userjoin.jsp'</script>");
	}else{
		session.removeAttribute("userid");
		out.print("<script> alert('회원탈퇴!!');location.href='main.jsp'</script>");
		
	}	
%>
</body>
</html>