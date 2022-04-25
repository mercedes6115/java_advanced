<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "jdbcs.*" %>
<%@ page import = "util.*" %>
<% request.setCharacterEncoding("utf-8");


String uid = request.getParameter("id");
String ucontent = request.getParameter("content");

FeedDAO dao = new FeedDAO();



String id = null;
String content = null;
String imgs = null;
String fname= null;
byte[] ufile =null;
request.setCharacterEncoding("utf-8");

ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
List items =sfu.parseRequest(request);
Iterator iter = items.iterator();

while(iter.hasNext()){
	FileItem item =(FileItem) iter.next();
	String name = item.getFieldName();
	if(item.isFormField()){
		//  텍스트 추출
		String value = item.getString("utf-8");
		if(name.equals("id")) id = value;
		else if(name.equals("content")) content = value;
	}else{
		// 사진 추출
		if(name.equals("imgs")){
			fname = item.getName();  // 사진이름
			ufile = item.get();		 // 사진내용 
			String root = application.getRealPath(java.io.File.separator);
			FileUtil.saveImage(root, fname, ufile);
		}
	}
}
if(dao.insert(id,content,fname)) response.sendRedirect("main.jsp");


%>

