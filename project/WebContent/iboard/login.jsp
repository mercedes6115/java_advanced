<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 7d0fd3756785236d9e914b9378b910e5 -->
<body>
<a id="custom-login-btn" href="javascript:kakaoLogin()">
  <img
    src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
    width="222"
    alt="카카오 로그인 버튼"
  />
</a>
<script src="https://developers.kakao.com/sdk/js/kakao.js">

</script>
<script>
Kakao.init("7d0fd3756785236d9e914b9378b910e5");

function kakaoLogin(){
	window.Kakao.Auth.login({
		scope:'profile_nickname, account_email, gender, birthday',
		success: function(authObj){
			console.log(authObj);
			window.Kakao.API.request({
				url:'/v2/user/me',
				success : res => {
					const kakaoAccount = res.kakao_account;
					console.log(kakaoAccount);
					alert("로그인성공");
				}
			})
		}
		
	})
	
}





</script>

</body>
</html>