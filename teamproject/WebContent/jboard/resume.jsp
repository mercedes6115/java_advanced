<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="resume.*" %>
<!DOCTYPE html>



<head>
    <meta charset="UTF-8">
    <title>이력서</title>
    <style type="text/css">
    table {
      width:70%; margin: auto;
    }
    </style>
</head>
 <body>
<%@ include file = "/_header.jsp" %>
    <h1><center> 이력서 </h1>
    <table border="0">
      <tr>
        <td style="text-align: left; font-weight: bold;">1. 인적사항</td>
      </tr>
    </table>
 		<%  
 		String k_name = request.getParameter("k_name");
		Resume_personalDTO resume_p =(new Resume_personalDAO()).getList(k_name);
		String img = resume_p.getPimg(), imgstr=null;
		if(img != null){
			imgstr = "<img src='../images/" + img +"'  width=150 height=170>";
		}		
		%> 
    <table border="1">
      <tr>
        <td rowspan="2" style="background-color: #CCCCCC; font-weight: bold; text-align: center; width: 15%;"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQwIq3eqwx-6i-Q6dfy-KNXQZD7PRsY9qU2eqOwsFqR0VFFk3Wn&usqp=CAU" width="150" height="170"></td>
        <td style="background-color: #78DFFF; font-weight: bold; text-align: center; width: 13%">한글이름</td>
        <td><%=resume_p.getK_name()%></td>
        <td style="background-color: #78DFFF; font-weight: bold; text-align: center; width: 13%">주민등록번호</td>
        <td><%=resume_p.getReginum()%></td>
      </tr>
      <tr>
        <td style="background-color: #78DFFF; font-weight: bold; text-align: center;">영문이름</td>
        <td><%=resume_p.getE_name()%></td>
        <td style="background-color: #78DFFF; font-weight: bold; text-align: center;">생년월일</td>
        <td><%=resume_p.getBirthday()%></td>
      </tr>
      <tr height=100>
        <td style="background-color: #78DFFF; font-weight: bold; text-align: center;">주소</td>
        <td colspan="4"></td>
      </tr>
    </table>
    <br /><br />
    <table border="0">
      <tr>
        <td style="text-align: left; font-weight: bold;">2. 학력사항</td>
      </tr>
    </table>
    <table border="1" width=1200 height=300>
    <thead>
      <tr>

        <th style="background-color: #FFC3FA; width: 25%">학교명</th>
        <th style="background-color: #FFC3FA; width: 35%">전공</th>
        <th style="background-color: #FFC3FA; width: 20%">입학일자</th>
        <th style="background-color: #FFC3FA; width: 20%">졸업일자</th>
      </tr>
    </thead>
    <tbody>
      <% 
      ArrayList<Resume_acDTO> resume_acs =(new Resume_acDAO()).getList();
			for(Resume_acDTO resume_ac : resume_acs){
				
	  %>
      <tr>
        <td><%=resume_ac.getSch_name() %></td>
        <td><%=resume_ac.getMajor() %></td>
        <td><%=resume_ac.getEnrolldate() %></td>
        <td><%=resume_ac.getGradate() %></td>
      </tr>
	<%
		} 
	%>
    </tbody>
    </table>
    <br /><br />
    <table border="0">
      <tr>
        <td style="text-align: left; font-weight: bold;">3. 자격사항</td>
      </tr>
    </table>
    <table border="1" width=1200 height=300>
    <thead>
      <tr>
        <th style="background-color: #F4A460; width: 25%">자격증명</th>
        <th style="background-color: #F4A460; width: 10%">등급</th>
        <th style="background-color: #F4A460; width: 25%">취득일</th>
        <th style="background-color: #F4A460; width: 40%">발급기관</th>
      </tr>
    </thead>
    <tbody>
      <% 
      ArrayList<Resume_weDTO> resume_wes =(new Resume_weDAO()).getList();
			for(Resume_weDTO resume_we : resume_wes){
				
	  %>
      <tr>
        <td><%=resume_we.getCerti_name()%></td>
        <td><%=resume_we.getGrade()%></td>
        <td><%=resume_we.getGain_date()%></td>
        <td><%=resume_we.getIssue_org()%></td>
      </tr>
	<%
		} 
	%>
    </tbody>
    </table>
<%@ include file = "/_footer.jsp" %>
  </body>

</html>