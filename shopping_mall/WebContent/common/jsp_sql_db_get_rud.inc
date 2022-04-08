<%

//질의 처리 결과값 변수 할당용

	String sql="SELECT * FROM customer WHERE (cust_id = ?)";
	pstmt = conn.preparedStatement(sql);
	pstmt.setString(1,cust_id);
	rset = pstmt.execyteQuery();
	
	if(!rset.isBeforeFirst()){
		out.print("<script>alert('존재하지 않는 아이디입니다');"
		+ "history.back();"
		+ "</script>"); // 이전 페이지로 보내줌 		
	}
	rset.next();
	cust_id = rset.getString("cust_id");
	String cust_pw = rset.getString("cust_pw");
	String cust_name = rset.getString("cust_name");
	String cust_ph = rset.getString("cust_ph");
	String cust_addr = rset.getString("cust_addr");
	String cust_gender = rset.getString("cust_gender");
	String cust_email = rset.getString("cust_email");
	String cust_join_date = rset.getString("cust_join_date");
%>