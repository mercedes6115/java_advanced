<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "test1.*" %>
<%
request.setCharacterEncoding("utf-8");


String num =request.getParameter("num");
String depart =request.getParameter("depart");
String name = request.getParameter("name");
String address = request.getParameter("address");
String phone = request.getParameter("phone");


Board1DAO dao = new Board1DAO();
dao.insert(num,depart,name,address,phone); 

out.print("Student 테이블 삽입이 성공했습니다.");
%>