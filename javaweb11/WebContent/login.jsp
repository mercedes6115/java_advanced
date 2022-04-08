<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 세션 속성 확인 (인증 회원 여부 확인)
String studentID = (String)session.getAttribute("studentID");
String name = (String)session.getAttribute("name");
boolean login=false;

if((studentID!= null) &&(name!= null)){
	login = true;
}

%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="login.css" /> <!-- 외부 css파일 불러오기 -->
<meta charset="UTF-8">
<title>학생 정보 입력</title>
<%@ include file="menu.jsp" %>
</head>

<body>
<form  action="search.jsp" method="POST">
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        
                            <div class="form-group">
                                <label class="form-control-label">학번</label>
                                <input type="text" name = "studentID" class="form-control">
                            </div>
                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" class="btn btn-outline-primary">검색</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
</form>
</body>

</html>

  




