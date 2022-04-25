<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="study.Person" scope="request"></jsp:useBean>
<%-- <jsp:setProperty property="변수명" name="인스턴스 변수"/> --%>
<jsp:setProperty property="id" name="person" value="20182005"/>
<jsp:setProperty property="name" name="person" value="홍길동"/>
아이디 : <%=person.getId() %><br>
이름 : <%=person.getName() %>
</body>
</html>