<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "jdbc.*" %>  
<%request.setCharacterEncoding("utf-8");%> 
<jsp:useBeans id="user" class="jdbc.UserDTO" scope="page" />   
<jsp:setProperty property ="*" name="user"/>    
<%-- <%
  String uid =request.getParameter("uid");
String upw =request.getParameter("upw");
String uname =request.getParameter("uname");
String ugender =request.getParameter("ugender");
String ubirth =request.getParameter("ubirth");
String uemail =request.getParameter("uemail");
String uphone =request.getParameter("uphone");
String uaddr =request.getParameter("uaddr"); 

UserDAO dao = new UserDAO();
dao.insert(uid,upw,uname,ugender,ubirth,uemail,uphone,uaddr);  
%> --%>

아이디: <jsp:getProperty property="uid" name="user" /> 
비   번: <jsp:getProperty property="upw" name="user" />