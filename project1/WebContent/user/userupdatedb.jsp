<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String uid = (String)session.getAttribute("uid");
if(uid==null){
	out.print("<script>alert('로그인을 하세요');");
	out.print("location.href='login.jsp'");
	out.print("</script>");
}
String upw = request.getParameter("upw");
String uname = request.getParameter("uname");
String ugender = request.getParameter("ugender");
String ubirth = request.getParameter("ubirth");
String uemail = request.getParameter("uemail");
String uphone = request.getParameter("uphone");
String uaddr = request.getParameter("uaddr");

UserDAO dao = new UserDAO();
if(dao.update(uid, upw, uname, ugender, ubirth, uemail, uphone,uaddr)){
	out.print("<script>alert('회원정보가 수정되었습니다.다시 로그인하세요.');");
	out.print("location.href='/user/login.jsp'");
	out.print("</script>");
}else{
	out.print("<script>alert('오류가 발생되었습니다.다시시도 하세요.');");
	out.print("location.href='/user/userupdate.jsp'");
	out.print("</script>");
}
%>