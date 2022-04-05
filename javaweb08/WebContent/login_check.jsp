<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 임시 고객 정보 DB
	String user_id = "root";
	String user_pw = "admin";
	String user_name = "19배본영";
	
	// login_form에서 입력한 값을 받음
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");
	
	//DB에 있는  비번과 입력한 비번을 비교하여 로그인 승인	
	if(cust_id.equals(user_id) && cust_pw.equals(user_pw)){
		
		session.setMaxInactiveInterval(600);
		session.setAttribute("cust_id", user_id);
		session.setAttribute("cust_name", user_name);
		
		out.print("<b>"+session.getAttribute("cust_id")+"("+
		session.getAttribute("cust_name")+")님 방문을 환영합니다!! </b><p>");
	}else{
		out.print("회원 가입 후 방문 하세요");
		//response.sendRedirect("login_form.jsp");
		
	}
	
	


%>
	<a href="login_form.jsp">[홈]</a>
	<a href="logout.jsp">[로그 아웃]</a>

</body>
</html>