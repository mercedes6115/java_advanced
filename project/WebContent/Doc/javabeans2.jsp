<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바 빈즈 작성 규칙 -->
<!-- 1. 자바 클래스를 만들때는  java.io.Serializable 인터페이스를 구현해야한다. //생략가능. -->
<!-- 2. 인수가 없는 기본 생성자가 있어야 한다. -->
<!-- 3. 모든 멤버 변수는 private 으로 설정해야 한다. -->
<!-- 4. Getter/Setter() 메서드가 모든 변수에 존재해야한다. -->

<!-- <자바 빈즈 문법> -->
<%-- <jsp:useBean id="member" class="com.dto.MemberBean" scope="page"/> --%>


<!-- <기존 자바 문법> -->
<!-- MemberBean member =(MemberBean) request.getAttribute("member"); -->
<!-- if(member ==null){ -->
<!-- 	member = new MemberBean(); -->
<!-- 	request.setAttribute("member", member); -->
<!-- 	} -->

<jsp:useBean id="date" class="java.util.Date"/>
<!-- 자바 빈즈로 Date클래스를 사용하도록 useBean  액션태그를 작성 -->
<%
	out.print("오늘의 날짜와 시간"); //문자열 출력
%>
<br>
<%=date %>
<!-- useBean 액션태그에 id속성값으로 현재 날짜와 시간을 출력하도록 표현문 태그. -->



</body>
</html>