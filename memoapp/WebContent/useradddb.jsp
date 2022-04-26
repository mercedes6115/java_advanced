<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdbcs.*" %>    
    
    
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String username = request.getParameter("username");
	
	UserDAO dao = new UserDAO();
	
	if(dao.exists(userid)==1){
		out.print("<script> alert('아이디가 중복됩니다!!'); location.href='userjoin.jsp'</script>");
		//response.sendRedirect("userjoin.jsp");
	}else{
		
	if(dao.insert(userid,userpw,username)){
		session.setAttribute("userid", userid);
		out.print("<script> alert('회원가입 성공!!');location.href='main.jsp'</script>");


	}else{
		out.print("<script> alert('회원가입 실패!!'); location.href='userjoin.jsp'</script>");

	}
	}
	
	
%>