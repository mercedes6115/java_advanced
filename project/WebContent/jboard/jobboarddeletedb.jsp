<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String buserid = null;
if(session.getAttribute("uid") !=null){
	buserid = (String) session.getAttribute("uid");
}
if(buserid == null){ //로그인이 안됐으면
	out.print("<script>alert('로그인을 하세요');");
	out.print("location.href = '/user/.login.jsp'");
	out.print("</script>");
}else{ //로그인 됐으면,
	//디비에 게시물 모든 정보 전달
	JobDAO dao = new JobDAO();
	if (dao.delete(request.getParameter("juser"))) {
		response.sendRedirect("../jboard/jobboard.jsp");
	}
}
%>