<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="jdbc.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저관리</title>
</head>
<body>
	<%!// 선언문
	String title = "유저 관리";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>

	<div class="container">
	<div class="alert alert-info" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>
	</div>
	<%
		BoardDAO dao = new BoardDAO();
		int todayPost = dao.getTodayPost(LocalDate.now().toString());
	%>

	<h3 align="center">유저 리스트</h3>
	<h3 align="right">오늘 자유게시판에 작성된 게시글:<%=todayPost %></h3>
	<div class="container">
		<div class="row" align="center">
			<div class="container my-3" align="center">
				<form action="multidel.jsp" method="post" id=multidelete>
				<table class="table">
					<thead>
						<tr class="table-dark">
							<th>체크</th>
							<th>아이디</th>
							<th>이름</th>
							<th>성별</th>
							<th>전화번호</th>
							<th>가입 날짜</th>
							<th>유저 삭제</th>
						</tr>
					</thead>
					<tbody>

						<%
							//JDBC 드라이버 로딩 테스트
						Class.forName("com.mysql.jdbc.Driver");
						//DB 연결
						String url = "jdbc:mysql://localhost:3306/ifu";
						String id = "root";
						String pw = "0000";

						Connection conn = null;
						PreparedStatement pstmt = null;
						ResultSet rset = null;

						conn = DriverManager.getConnection(url, id, pw);

						// 테이블 데이터 넣는 SQL
						String sql = "SELECT count(*) FROM user";
						pstmt = conn.prepareStatement(sql);
						rset = pstmt.executeQuery();

						//필요 변수들 선언
						int LINE_PER_PAGE = 3; //페이지당 출력 줄수
						int PAGE_PER_BLOCK = 2; //블럭당 페이지 수

						int nbr_of_row = 0; //게시물의 총수/ 사람의 총수/ 테이블 하나 전체의 갯수
						int nbr_of_page = 0; //총 페이지 수

						int start_pointer = 0; // DB 검색 시작 위치
						int cur_page_no = 0; // 현재 페이지 번호
						int block_nbr = 0; // 블럭 번호
						int block_start_page_no = 0; // 블럭 시작 페이지 번호
						int block_endpage_no = 0; // 블럭 끝 페이지 번호
						int previous_block_start_pageno = 0; //이전 블럭 시작 페이지 번호
						int next_block_start_pageno = 0; //다음 블럭 시작 페이지 번호

						// 총 게시물 개수(총 회원의 수, 테이블 전체의 수) 계산

						rset.next();
						nbr_of_row = Integer.parseInt(rset.getString("count(*)"));

						// 총 페이지 수 계산 ...............ceil 올림   floor 버림 round 반올림

						nbr_of_page = (int) Math.ceil((float) nbr_of_row / LINE_PER_PAGE);

						// 검색 페이지 확인
						if (request.getParameter("pageno") == null) {
							//맨처음 검색
							cur_page_no = 1;
						} else if (nbr_of_page < Integer.parseInt(request.getParameter("pageno"))) {
							// DB검색 시작 위치 계산
							cur_page_no = nbr_of_page;
						} else {
							//특정 페이지 검색 
							cur_page_no = Integer.parseInt(request.getParameter("pageno"));
						}

						// DB 검색 시작 위치와 갯수
						start_pointer = (cur_page_no - 1) * LINE_PER_PAGE;

						//*****************************************************************
						//SQL 처리

						sql = "SELECT * FROM user ORDER BY uid ASC LIMIT ?,?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, start_pointer);
						pstmt.setInt(2, LINE_PER_PAGE);
						rset = pstmt.executeQuery();

						if (!rset.isBeforeFirst())
							out.print("<script>alert('데이터가 없습니다. ');" + "history.back();" + "</script>");

						int no = 1;
						while (rset.next()) {

							String userid = rset.getString("uid");
							String uname = rset.getString("uname");
							String ugender = rset.getString("ugender");
							String ubirth = rset.getString("ubirth");
							String uphone = rset.getString("uphone");
							String uregiday = rset.getString("uregiday");
							String uaddr = rset.getString("uaddr");
							String upw = rset.getString("upw");
							String uemail = rset.getString("uemail");
						%>

						<tr>
							<td><input type="checkbox" name=chk value="<%=uid %>"></td>
							<td><%=userid%></td>
							<td><%=uname%></td>
							<td><%=ugender%></td>
							<td><%=uphone%></td>
							<td><%=uregiday%></td>
							<td><a href="deletecheck.jsp?uid=<%=userid %>" type="button" class="btn btn-danger">유저삭제</a></td>	
						</tr>
						<tr>
							<td colspan=7 align="center">
							
								<%
								no++;
									}
								%>
								<input type="submit" value="유저삭제">
								<% 
								//********************************************페이지 제어

								//블럭 번호
								block_nbr = ((cur_page_no - 1) / PAGE_PER_BLOCK) + 1;
								//블럭 시작 페이지 번호
								block_start_page_no = ((block_nbr - 1) * PAGE_PER_BLOCK) + 1;
								//블럭 끝 페이지 번호
								block_endpage_no = (block_start_page_no + PAGE_PER_BLOCK) - 1;

								if (block_nbr > 1) {
								out.print("&nbsp[<a href='manageuser.jsp?pageno=1'>" + "맨처음</a>]&nbsp");

								//이전 블록 시작 페이지
								previous_block_start_pageno = block_start_page_no - PAGE_PER_BLOCK;
								out.print("&nbsp[<a href='manageuser.jsp?pageno=" + previous_block_start_pageno + "'>이전</a>]&nbsp");
								}

								for (int pgn = block_start_page_no; pgn <= block_endpage_no; pgn++) {
								if (pgn > nbr_of_page) {
									break;
								}

								if (pgn == cur_page_no) {
									out.print("&nbsp" + pgn + "&nbsp");
								} else {
									out.print("&nbsp[" + "<a href='manageuser.jsp?" + "pageno=" + pgn + "'>" + pgn + "</a>]&nbsp");
								}
								}

								if (block_endpage_no < nbr_of_page) {
								// 다음 블럭 시작 페이지
								next_block_start_pageno = block_endpage_no + 1;

								out.print("&nbsp[<a href='manageuser.jsp?pageno=" + next_block_start_pageno + "'>다음</a>]&nbsp");

								out.print("&nbsp[<a href='manageuser.jsp?pageno=" + nbr_of_page + "'>맨끝</a>]&nbsp");
								}
								%>

							</td>
						</tr>
					</tbody>
				</table>
				</form>
			
			</div>
		</div>
		<hr>
	</div>

	<%@ include file="/_footer.jsp"%>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>