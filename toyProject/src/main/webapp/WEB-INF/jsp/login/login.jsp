<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/ui.css">
<style>
body{text-align:center;}
.login-wrap{width:500px;height:750px;margin-top:70px;display:inline-block;}
.login-wrap .login-logo{width:100%;height:100px;background-color:#aaa;}
.login-wrap .login-form{width:calc(100% - 30px);height:calc(100% - 100px);padding:15px;text-align:left;}
.login-form .login-desc{font-size:15px;}
.login-form .login-text{width:calc(100% - 15px);border:1px solid #bdbdbd; ;height:50px;margin-top:15px;margin-bottom:15px;border-radius: 5px;font-size:17px;padding-left:10px;}
.login-form .login-btn{width:100%;height:50px;margin-top:10px;font-size:17px;border:0;border-radius:5px;font-family:LotteMartDream;}
.login-form .login-btn:nth-child(2n-1){background-color:white;color:#008299;border:1px solid #008299}
.login-form .login-btn:nth-child(2n){background-color:#008299;color:white;}
.login-form .login-btn:hover{cursor:pointer;}
.login-form .find-btn{font-size:15px;position:relative;top:15px;left:10px;color:#a6a6a6;}
.login-form .find-btn:hover{color:black;}
.login-form .easy-login{height:80px;width:100%;border-radius:10px;display:flex;justify-content: center;align-items: center;position:relative;margin-top:10px;}
.login-form .easy-login img{cursor:pointer;}
@media(max-width:500px){
.login-wrap{width:100vw;}
}
</style>
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<script>
function fnLogin(){
		var url= "/pop/main";    //팝업창에 출력될 페이지 URL
		var winWidth = 1300;
	    var winHeight = 700;
	    var popupX = (window.screen.width / 2) - (winWidth / 2);
	    var popupY = (window.screen.height / 2) - (winHeight / 2);
	    var popupOption= "status=no,resizable=no,left="+popupX+",top="+popupY+", width="+winWidth+", height="+winHeight;    //팝업창 옵션(optoin)
	    window.open(url,"Palendar",popupOption);
}
</script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>  
 Kakao.init("52df37235bd8b48ebb211bd920161dcd");
 
 function kakaoLogin(){
  Kakao.Auth.login({      
   success: function(authObj) {
    Kakao.API.request({
     url: '/v1/user/me',
     success: function(res) {
     // epassUserCheck(res.kaccount_email, '카카오');
      Kakao.Auth.logout();
      //alert(JSON.stringify(res)); 
      alert(res.properties.nickname+"님 ");
      //$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
      },
     fail: function(error) {
      console.log(error);
     }
    });
   },
   fail: function(err) {
    console.log(err);
   }
  });      
 }
</script>
</head>
<body>
	<div class="login-wrap">
		<div class="login-logo"></div>
		<div class="login-form">
			<span class="login-desc">이메일</span><br>
			<input type="text" class="login-text"/>
			<span class="login-desc">비밀번호</span>
			<input type="password" class="login-text"/>
			<input type="submit" class="login-btn" onclick="fnLogin()" value="로그인"/>
			<input type="button" class="login-btn" id="join-btn" value="회원가입"/>
			<div class="easy-login">
				<img src="/resources/images/ui/Naver_loginBtn.png" style="width:220px;"/>
				<img  src="/resources/images/ui/kakao_loginBtn.png" onclick="javascript:kakaoLogin();" style="width:220px;margin-left:20px;cursor:pointer;"/>
			</div>
			<a href="#" class="find-btn">혹시 비밀번호를 잊으셨나요?</a>
		</div>
	</div>
	<div class="footer" style="height:calc(20vh - 75px);">
    	<span> © Copyright 2019. All rights reserved.</span>
    </div>
</body>
</html>