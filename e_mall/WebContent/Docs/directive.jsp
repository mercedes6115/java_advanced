<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- page	<%@ page... %> JSP페이지에 대한 정보 설정
include <%@ include ... %> JSP페이지의 특정 영역에 다른 문서를 포함

lagnuage 속성 : jsp페이지에서 사용할 언어를 설정

contentType 속성 : jsp페이지의 컨텐츠 유형을 설정
				   문자열 세트 설정 charset= UTF-8 로 한글 사용  --%>
Today is : <%= new java.util.Date() %>
</body>
</html>