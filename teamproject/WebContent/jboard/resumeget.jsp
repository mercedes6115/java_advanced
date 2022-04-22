<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
</head>
<body>


<a href="resume_download_4111.docx">이력서 다운받기</a>
<br>
<br>
<br>
<form action="fileUpload.jsp" name="fileForm" method="post" enctype="multipart/form-data">
	작성자: <input type="text" name="user"><br>
	제목: <input type="text" name="title"><br>
	파일명: <input type="file" name="ufilename"><br>
	<input type="submit" value="파일 업로드">
</form>



</body>
</html>