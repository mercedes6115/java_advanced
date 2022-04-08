<%
String cust_pw = request.getParameter("cust_pw");
String cust_name = request.getParameter("cust_name");

//전화번호
String tel_no_region = request.getParameter("tel_no_region");
String tel_num1 = request.getParameter("tel_num1");
String tel_num2 = request.getParameter("tel_num2");

String cust_ph = tel_no_region + "-"
               +tel_num1 + "-"
               +tel_num2;
               
String cust_addr = request.getParameter("cust_addr");
String cust_gender = request.getParameter("cust_gender");

String cust_email;
String cust_email_1 = request.getParameter("cust_email_1");
String cust_email_2 = request.getParameter("cust_email_2");
      
if ((cust_email_1.length() == 0) && (cust_email_2.length() == 0)){
   cust_email = "";
   }else {
   cust_email = cust_email_1 + "@" + cust_email_2;   
   }      
%>



	