<%@page import="jdbc.UserDTO"%>
<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%request.setCharacterEncoding("utf-8"); %>
 <%
 	String id = (String)session.getAttribute("uid");
 	if(id==null){
 		out.print("<script>alert('로그인 상태가 아닙니다');");
 		out.print("location.href='/user/login.jsp");
 		out.print("</script>");
 	}else{
		UserDTO user = (new UserDAO()).getName(id);
		String upw = request.getParameter("upw");
		if(upw.equals(user.getUpw())){ // 패스워드가 일치하면
			UserDAO dao = new UserDAO();
			if(dao.delete(id, upw)){
				out.print("<script>alert('정상적으로 탈퇴 되었습니다');");
				out.print("location.href='/user/login.jsp'");
				out.print("</script>");
			}			
		}else{ //패스워드 불일치시
			out.print("<script>alert('패스워드가 틀립니다.다시시도 하세요.');");
			out.print("location.href='/user/userdelete.jsp'");
			out.print("</script>");
		}
 	}
 %>