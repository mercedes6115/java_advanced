<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
String uname = request.getParameter("uname");
String ugender = request.getParameter("ugender");
String ubirth = request.getParameter("ubirth");
String uemail = request.getParameter("uemail");
String uphone = request.getParameter("uphone");
String uaddr = request.getParameter("uaddr");
String uregiday = request.getParameter("uregiday");

UserDAO dao = new UserDAO();
int res = dao.insert(uid, upw, uname, ugender, ubirth, uemail, uphone,uaddr);
if(res == 1){
	out.print("<script>alert('회원가입이 되었습니다');");
	out.print("location.href='/user/login.jsp'");
	out.print("</script>");
}else{
	out.print("<script>alert('오류가 발생했습니다.');");
	out.print("location.href='/user/useradd.jsp'");
	out.print("</script>");
}
%>