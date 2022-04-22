<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "resume.*" %>
<%@ page import = "util.FileUtil" %>
<%
request.setCharacterEncoding("utf-8");

//imgs로 넘어온 전체 데이터에서 분류 
String k_name = null;
String e_name = null;
String reginum = null;
String birthday = null;
String address = null;
String pimg= null; // 이미지 파일 이름
byte[] pfile =null; // 실제 이미지 파일 

String sch_name = null;
String major = null;
String enrolldate = null;
String gradate = null;

String certi_name = null;
String grade = null;
String gain_date = null;
String issue_org = null;

// 추출값들을 객체 형태로 저장할 준비
ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

// 입력된 값들을 추출하여 객체에 저장 
List items =sfu.parseRequest(request);

// 순차적으로 접근하기 위한 객체 생성 
Iterator iter = items.iterator();


while(iter.hasNext()){ // 요소가 있으면 계속 반복 없으면 종료 
	FileItem item =(FileItem) iter.next(); // 요소에 순차적으로 접근하여 하나씩 추출하여 저장 
	String name = item.getFieldName(); // 요소의 이름을 추출 
	if(item.isFormField()){ // 이름과 값형태 즉 map형태로 구성이 되있는지 확인 넘겨준 값들에서 맵형태면 원하는 값들이 뭉쳐있는것
		//  텍스트 추출
		String value = item.getString("utf-8");
		if(name.equals("k_name")) k_name = value;
		else if(name.equals("e_name")) e_name = value;
		else if(name.equals("reginum")) reginum = value;
		else if(name.equals("birthday")) birthday = value;
		else if(name.equals("address")) address = value;
		
		else if(name.equals("sch_name")) sch_name = value;
		else if(name.equals("major")) major = value;
		else if(name.equals("enrolldate")) enrolldate = value;
		else if(name.equals("gradate")) gradate = value;
		
		else if(name.equals("certi_name")) certi_name = value;
		else if(name.equals("grade")) grade = value;
		else if(name.equals("gain_date")) gain_date = value;
		else if(name.equals("issue_org")) issue_org = value;
	}else{
		// 사진 추출
		if(name.equals("pimg")){
			pimg = item.getName();  // 사진이름
			pfile = item.get();		 // 사진내용 
			String root = application.getRealPath(java.io.File.separator);
			FileUtil.saveImage(root, pimg, pfile);
		}

	}
}
Resume_personalDAO dao_p = new Resume_personalDAO();
Resume_acDAO dao_ac = new Resume_acDAO();
Resume_weDAO dao_we = new Resume_weDAO();
dao_p.insert(k_name,e_name,reginum,birthday,address,pimg);
dao_ac.insert(sch_name,major,enrolldate,gradate);
dao_we.insert(certi_name,grade,gain_date,issue_org);


%>


<a href="resume.jsp?k_name=<%=k_name%>" class ="btn btn-info" role="button">이력서 보러가기</a>