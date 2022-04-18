<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바 빈즈 규칙
1. 클래스를 만들때는 jaba.io.Serializable 인터페이스를 구현해야한다 
2. 인수가 없는 기본 생성자가 있어야 한다
3. 모든 멤버 변수는 private으로 설정해야한다
4. Getter/Setter() 매서드가 모든 변수에 존재 해야한다 
5. setProperty는 useBean과 함께 자바빈즈의 Setter()에 접근하여 자바 빈즈의 멤버변수인 Property값을 저장하는 태그
setProperty태그는 폼 페이지로부터 전달되느 ㄴ요청 파라미터값을 직접 저장하거나 자바빈즈의 property로 변경하여 값을 저장할 수 있다

속성
name - useBean
property - 자바빈즈의 property 이름 이름에 '*'를 사용하면 모든 요청 파라미터가 자바비ㄴ즈 property의 setter()매서드에 전달돔을 미
values - 변경할 property의 값 만약 null이거나 존재하지 않는 요청일 경우 Setproperty가 무시된다
param - 요청 파라미터의 이름.param 과 values를 동시에 모두 사용할수 없으며 하나만 선택하여 사용가능

-->
<%-- <jsp:useBean id = "member" class = "com.dto.MemberBean" scope="page"/>
MemberBean member =(MemberBean) request.getAttribute ("member");
if(member == null){
	member = new MemberBean();
	request.setAttribute("member",member);
} --%>

<%-- <jsp:serProperty name="지바빈즈 이름" property="속성이름"  value ="값" /> --%>


<jsp:useBean id = "date" class = "java.util.Date" />
<!--자바 빈즈로 Date클래스를 사용하도록 useBean 액션태그를 작성-->
<%
	out.print("오늘의 날짜와 시각: ");
%>
<%=date%>
<!-- usebean 액션 태그에 id속성값으로 현재날짜와 시각을 출력하도록 표현문 태그 작성 -->


</body>
</html>