<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="manageuser.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] uids = request.getParameterValues("chk");

	UserDAO dao = new UserDAO();
	int result = dao.multiDelete(uids);
	
	if(result == uids.length){
		response.sendRedirect("manageuser.jsp");
	}else{
		out.print("삭제 실패");
	}
%>

</body>
</html>