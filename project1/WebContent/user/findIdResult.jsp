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
 request.setCharacterEncoding("UTF-8");
   	 String uname = request.getParameter("uname");
     String uphone = request.getParameter("uphone");
     
UserDAO dao = new UserDAO();
 String uid = dao.findId(uname, uphone); //아이디를 디비에서 가져옴..실패시 널
 
%>

  <form name="idsearch" method="post">
      <%
       if (uid != null) {
      %>
      
      <div class = "container">
      	<div class = "found-success">
	      <h4>  회원님의 아이디는 </h4>  
	      <div class ="found-id"><%=uid%></div>
	      <h4>  입니다 </h4>
	     </div>
	     <div class = "found-login">
 		    <a href="login.jsp"><input type="button" id="btnLogin" value="로그인" onClick = 'login()'/></a>
       	</div>
       </div>
      <%
  } else {
 %>
        <div class = "container">
      	<div class = "found-fail">
	      <h4>  등록된 정보가 없습니다 </h4>  
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
 		    <input type="button" id="btnjoin" value="회원가입" onClick="useradd()"/>
       	</div>
       </div>
       
    <div class = "adcontainer">
	<a href="#" ><img src = "../images/casead.png" /></a>                
</div>   
       <%
  }
 %> 
      </form>

</body>
</html>