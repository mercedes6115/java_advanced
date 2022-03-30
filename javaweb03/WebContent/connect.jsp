<%@page import="org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>

<% 
Class.forName("com.mysql.jdbc.Driver");
connection conn = DriverManager.getConnection("jdbc;mysql://localhost;3306/mysns","root","a489348a!");


%>
