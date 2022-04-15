<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="formtest.jsp" method="post">

취미: 독서<input type="checkbox" name="hobby" value="독서" checked>
운동<input type="checkbox" name="hobby" value="운동">
영화<input type="checkbox" name="hobby" value="영화">
<br>

<!-- <textarea cols="너비" rows="높이"> -->
<textarea cols="30" rows="3">
</textarea>


<input type="submit" value="전송">
<input type="reset" value="초기화">
</form>
</body>
</html>