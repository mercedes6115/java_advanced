<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "util.FileUtil" %>
<%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.net.*" %>
<%@ page import = "javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
// 1] 파라미터로 넘어오는 파일명 받기 (a 태그는 무슨방식이다? GET 방식)
String filename = request.getParameter("ufilename");

// 2] 파일이 저장된 서버의 물리적 경로 얻기
String saveDirectory = application.getRealPath("/resumes");

// 3] 파일 크기를 얻기 위한 파일객체 생성 (다운로드시 프로그레스바를 표시하기 위함)
// File.separator 는 윈도우면 \(원표시) 리눅스면 /(슬래시)로 표시해줌
File file = new File(saveDirectory + File.separator + filename);
long length = file.length();

// 다운로드를 위한 응답 헤더 설정
// 4] 다운로드창을 보여주기위한 응답헤더 설정
// 4-1] 웹브라우저가 인식하지 못하는 ContentType(MIME)타입 설정 (보통 application/octet-stream 으로 설정)
response.setContentType("application/octet-stream");

// 4-2] 다운로드시 프로그레스바를 표시하기 위한 컨텐츠 길이 설정
response.setContentLengthLong(length);

// 4-3] 응답헤더명 : Content-Disposition
//		응답헤더값 : attachment;filename=파일명
//		setHeader(응답헤더명, 응답헤더값) 로 추가
//		브라우저 종류에 따라 한글파일명이 깨지는 경우가 있으므로 브라우저별 인코딩 방식을 달리하자(파일명 인코딩)
boolean isIe = request.getHeader("user-agent").toUpperCase().indexOf("MSIE") != -1 ||
			   request.getHeader("user-agent").indexOf("11.0") != -1;
if(isIe){ // 인터넷 익스플로러
	filename = URLEncoder.encode(filename,"UTF-8");
}
else{ // 기타 웹브라우저
	// new String(byte[] bytes, String charset) 사용
	// 1] 파일명은 byte형 배열로 변환
	// 2] String 클래스의 생성자에 변환한 배열과 charset는 8859_1 지정
	filename = new String(filename.getBytes("UTF-8"), "8859_1");
}
response.setHeader("Content-Disposition", "attachment;filename=" + filename);

// 5] 서버에 있는 파일에 연결할 입력 스트림 생성
BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
	
// JSP 에는 이미 out 이라는 출력스트림(JSPWriter)이 있기 때문에
// response.getOutputStream() 를 호출하면 출력스트림간의 충돌이 발생해서 에러가 출력된다.
// 에러가 나도 문제는 없지만 찝찝하므로 out 객체를 사용하지 않게 처리 한다.
out.clear();
out = pageContext.pushBody();

// 6] 웹브라우저에 연결할 출력 스트림 생성 
BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());

// 7] bis 로 읽고 bos 로 출력
int data;
while((data=bis.read()) != -1){
	bos.write(data);
	bos.flush();
}

// 8] 스트림 닫기
bis.close();
bos.close();
%>
</body>
</html>