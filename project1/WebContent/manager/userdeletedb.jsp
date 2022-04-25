<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uid = request.getParameter("uid");
UserDAO dao = new UserDAO();
int result = dao.delete(uid);

if(result > 0){
	response.sendRedirect("manageuser.jsp");
}else{
	out.print("삭제 실패");
}
%>

</body>
</html>