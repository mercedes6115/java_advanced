<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "jdbc.*" %>
<%@ page import = "util.FileUtil" %>


<%
request.setCharacterEncoding("utf-8");

String bimgname=request.getParameter("bimgs");
String bid = null;
String btitle = null;
String bcon = null;
String buser = null;
String bdate = null;
String bimg= null; // 이미지 파일 이름
byte[] bfile =null; // 실제 이미지 파일 
String bavailable = null;

// 추출값들을 객체 형태로 저장할 준비
ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

// 입력된 값들을 추출하여 객체에 저장 
List items =sfu.parseRequest(request);

// 순차적으로 접근하기 위한 객체 생성 
Iterator iter = items.iterator();

if(bimgname != null){
while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
	FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
	String name = item.getFieldName(); // 요소의 이름을 추출 
	if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
		//  텍스트 추출
		String value = item.getString("utf-8");
		if(name.equals("bid")) bid = value;
		else if(name.equals("btitle")) btitle = value;
		else if(name.equals("bcon")) bcon = value;
		else if(name.equals("buser")) buser = value;
		else if(name.equals("bdate")) bdate = value;
	}else{
		// 사진 추출
		if(name.equals("bimgs")){
			bimg = item.getName();  // 사진이름
			bfile = item.get();		 // 사진내용 
			String root = application.getRealPath(java.io.File.separator);
			FileUtil.saveImage(root, bimg, bfile);
		}
	}
}

BoardDAO dao = new BoardDAO();
if(dao.insert(bid,btitle,bcon,buser,bdate,bimg,bavailable)){
	response.sendRedirect("board.jsp");
}
}else{ // 사진을 업로드하지 않는경우
	while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
		FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
		String name = item.getFieldName(); // 요소의 이름을 추출 
		if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
			//  텍스트 추출
			String value = item.getString("utf-8");
			if(name.equals("bid")) bid = value;
			else if(name.equals("btitle")) btitle = value;
			else if(name.equals("bcon")) bcon = value;
			else if(name.equals("buser")) buser = value;
			else if(name.equals("bdate")) bdate = value;
		}
		
	}
	BoardDAO dao_noimg= new BoardDAO();
	if(dao_noimg.insert(bid,btitle,bcon,buser,bdate,bimgname,bavailable)){
		response.sendRedirect("board.jsp");
	}
}

	


%>