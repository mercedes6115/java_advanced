<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "util.FileUtil" %>
<%
request.setCharacterEncoding("utf-8");


String juser = null;
String jtitle = null;
String jcon = null;
String jfile = null;
byte[] ufile =null; // 실제 이미지 파일 

ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

//입력된 값들을 추출하여 객체에 저장 
List items =sfu.parseRequest(request);

//순차적으로 접근하기 위한 객체 생성 
Iterator iter = items.iterator();

while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
	FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
	String name = item.getFieldName(); // 요소의 이름을 추출 
	if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
		//  텍스트 추출
		String value = item.getString("utf-8");
		if(name.equals("juser")) juser = value;
		else if(name.equals("jtitle")) jtitle = value;
		else if(name.equals("jcon")) jcon = value;
	}else{
		if(name.equals("jfile")) {
			if(item.getName()!=""){ //파일을 안넣었을 때 공백이 보내지므로 공백이 아닌경우 파일저장 , 공백인경우 위에서 null 로 초기화했으므로 null 값이 넘어감
				jfile = item.getName();  // 사진이름
				ufile = item.get();		 // 사진내용 
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveResume(root, jfile, ufile);
			}
		}
	}
}
JobDAO dao = new JobDAO();
dao.insert(null, juser, jtitle,null,jfile,jcon);
%>
<br>
<br>
<br>



작성한 이력서 다운받으러 가기<br>
작성자:<%=juser %><br>
제목:<%=jtitle %><br>
이력서 파일 이름:<%=jfile %><br>
설명 : <%=jcon %><br>
<a href="resume_check.jsp?ufilename=<%=jfile%>">이력서 확인하기</a>
<a href="jobboard.jsp?ufilename=<%=jfile%>&user=<%=juser%>&title=<%=jtitle%>">이력서 게시판가기</a>
</form>