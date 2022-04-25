<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="study.Person"  />

아이디: <%=person.getId()%><br>
이름: <%=person.getName()%><br>
	<%
		person.setId(20182005);
		person.setName("홍길동이");
	%>
	<jsp:include page="javabeans4_person.jsp" />
</body>
</html>