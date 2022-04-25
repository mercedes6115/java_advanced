<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "board.*" %>
<%@ page import = "util.FileUtil" %>


<%
request.setCharacterEncoding("utf-8");

String fimgname=request.getParameter("fimg");
String fid = null;
String ftitle = null;
String fcon = null;
String fuser = null;
String fdate = null;
String fimg= null; // 이미지 파일 이름
byte[] ffile =null; // 실제 이미지 파일 

// 추출값들을 객체 형태로 저장할 준비
ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

// 입력된 값들을 추출하여 객체에 저장 
List items =sfu.parseRequest(request);

// 순차적으로 접근하기 위한 객체 생성 
Iterator iter = items.iterator();

if(fimgname != null){
while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
	FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
	String name = item.getFieldName(); // 요소의 이름을 추출 
	if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
		//  텍스트 추출
		String value = item.getString("utf-8");
		if(name.equals("fid")) fid = value;
		else if(name.equals("ftitle")) ftitle = value;
		else if(name.equals("fcon")) fcon = value;
		else if(name.equals("fuser")) fuser = value;
		else if(name.equals("fdate")) fdate = value;
	}else{
		// 사진 추출
		if(name.equals("bimgs")){
			fimg = item.getName();  // 사진이름
			ffile = item.get();		 // 사진내용 
			String root = application.getRealPath(java.io.File.separator);
			FileUtil.saveImage(root, fimg, ffile);
		}
	}
}

BoardDAO dao = new BoardDAO();
if(dao.insert(fid,ftitle,fcon,fuser,fdate,fimg)){
	response.sendRedirect("board.jsp");
}
}else{ // 사진을 업로드하지 않는경우
	while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
		FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
		String name = item.getFieldName(); // 요소의 이름을 추출 
		if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
			//  텍스트 추출
			String value = item.getString("utf-8");
			if(name.equals("fid")) fid = value;
			else if(name.equals("ftitle")) ftitle = value;
			else if(name.equals("fcon")) fcon = value;
			else if(name.equals("fuser")) fuser = value;
			else if(name.equals("fdate")) fdate = value;
		}
		
	}
	BoardDAO dao_noimg= new BoardDAO();
	if(dao_noimg.insert(fid,ftitle,fcon,fuser,fdate,fimgname)){
		response.sendRedirect("board.jsp");
	}
}

	


%>