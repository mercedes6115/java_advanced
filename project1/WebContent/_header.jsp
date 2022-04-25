<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
@font-face {
    font-family: 'OTWelcomeRA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
    unicode-range: U+AC00-D7A3
}
* {
	font-family: 'OTWelcomeRA';
	paddig-bottom: 70px;
}

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
} 

 a:link {
 	text-decoration:none !important;
 }
 
 a:hover {
 	color: red !important;
 }



</style>

<link href="headers.css" rel="stylesheet">


<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container">  
 <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/main.jsp" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0z" fill="none"/><path d="M9 11.75c-.69 0-1.25.56-1.25 1.25s.56 1.25 1.25 1.25 1.25-.56 1.25-1.25-.56-1.25-1.25-1.25zm6 0c-.69 0-1.25.56-1.25 1.25s.56 1.25 1.25 1.25 1.25-.56 1.25-1.25-.56-1.25-1.25-1.25zM12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8 0-.29.02-.58.05-.86 2.36-1.05 4.23-2.98 5.21-5.37C11.07 8.33 14.05 10 17.42 10c.78 0 1.53-.09 2.25-.26.21.71.33 1.47.33 2.26 0 4.41-3.59 8-8 8z"/></svg>
      유학생들을 위한 정보
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2 link-dark">공지사항</a></li>
        <li><a href="/iboard/board.jsp" class="nav-link px-2 link-dark">자유게시판</a></li>
        <li><a href="/jboard/jobboard.jsp" class="nav-link px-2 link-dark">구직게시판</a></li>
        <li class="nav-item dropdown">
        	<a class="nav-link dropdown-toggle link-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            방/중고거래
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">방거래 게시판</a></li>
            <li><a class="dropdown-item" href="/sellbuy/boardlist.jsp">중고 거래 게시판</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
        	<a class="nav-link dropdown-toggle link-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            회원
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/user/userupdate.jsp">회원 정보 수정</a></li>
            <li><a class="dropdown-item" href="/user/userdelete.jsp">회원 탈퇴</a></li>
            <li><a class="dropdown-item" href="/user/myboard.jsp">내가 작성한 자유게시판 글</a></li>
            <li><a class="dropdown-item" href="/user/myjobboard.jsp">내가 작성한 구직게시판 글</a></li>
            <li><a class="dropdown-item" href="/user/myjobboard.jsp">내가 작성한 중고거래 글</a></li>
          </ul>
        </li>
      
        <li class="nav-item dropdown">
        	<a class="nav-link dropdown-toggle link-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            관리자
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/manager/manageuser.jsp">유저관리</a></li>
          </ul>
        </li>
      </ul>

      <div class="col-md-3 text-end">
      <%
	String uid = (String) session.getAttribute("uid");
    String aid = (String) session.getAttribute("aid");
	if(uid==null && aid==null){
	%>
        <a class="btn btn-outline-primary" href="/user/login.jsp" role="button">로그인</a>
        <a class="btn btn-primary" href="/user/useradd.jsp" role="button">회원가입</a>	
	<%} else {%> 
		<a class="btn btn-outline-primary" href="/user/logout.jsp" role="button">로그아웃</a>	
		<%
		if(uid!=null) {
		%>
		<a class="btn btn-outline-primary" href="/user/userupdate.jsp" role="button">마이페이지</a>
		<%} else {%>
		<a class="btn btn-outline-primary" href="/manager/managemain.jsp" role="button">관리자페이지</a>	
		<%} %>
	<%} %>
		
	
      </div>
    </header>
</div>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>