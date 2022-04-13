<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  <%
		for(int i=1;i<=10;i++){
			if(i % 2 == 0){
				out.print(i+"<br>");			
			}
		}
	%>-->
	
	<%! String jsp = "Hello JSP";

	String getString(String str){
		return str;
	}
	%>
<% out.print(getString(jsp));%>
	
	
</body>
</html>