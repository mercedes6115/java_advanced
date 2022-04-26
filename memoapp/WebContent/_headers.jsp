<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div style="float:right;width:100%;">
  
   	<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
  	<button type="button" class="btn btn-primary">메모보기</button>
  	<button type="button" class="btn btn-primary"><a href ="memodellist.jsp"  type="button" class="btn-btn-danger">삭제한 메모들 보기</a></button>

  	<div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
      Dropdown
    </button>
    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
    <li><a class="dropdown-item" href="#">회원메뉴</a></li>
    <li><a href ="userjoin.jsp"  type="button" class="btn-btn-danger">회원가입</a></li>
    <li><a href ="userlogin.jsp"  type="button" class="btn-btn-danger">로그인</a></li>
    <li><a href ="userlogout.jsp"  type="button" class="btn-btn-danger">로그아웃</a></li>
    <li><a href ="memodellist.jsp"  type="button" class="btn-btn-danger">삭제한 메모들 보기</a></li>
    </ul>
  	</div>
	</div>
	</div>