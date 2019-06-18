<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/ui.css">
<style>
body{text-align:center;}
.login-wrap{width:500px;height:80vh;margin-top:70px;border:1px solid #bdbdbd;display:inline-block;}
.login-wrap .login-logo{width:100%;height:100px;background-color:#aaa;}
.login-wrap .login-form{width:calc(100% - 30px);height:calc(100% - 100px);padding:15px;text-align:left;}
.login-form .login-desc{font-size:15px;}
.login-form .login-text{width:calc(100% - 15px);height:50px;margin-top:15px;margin-bottom:15px;border-radius: 5px;font-size:17px;padding-left:10px;}
.login-form .login-btn{width:100%;height:50px;margin-top:10px;font-size:17px;border:0;border-radius:5px;font-family:LotteMartDream;}
.login-form .login-btn:nth-child(2n-1){background-color:white;color:#008299;border:1px solid #008299}
.login-form .login-btn:nth-child(2n){background-color:#008299;color:white;}
.login-form .login-btn:hover{cursor:pointer;}
.login-form .find-btn{font-size:15px;margin-left:30px;position:relative;top:15px;left:100px;color:#a6a6a6;}
.login-form .find-btn:hover{color:black;}
.login-form .easy-login{height:80px;width:100%;border-radius:10px;border:1px solid #a6a6a6;display:flex;justify-content: center;align-items: center;position:relative;margin-top:15px;}
.login-form .easy-login img{cursor:pointer;}
</style>
</head>
<body>
	<div class="login-wrap">
		<div class="login-logo"></div>
		<div class="login-form">
			<span class="login-desc">아이디</span><br>
			<input type="text" class="login-text"/>
			<span class="login-desc">비밀번호</span>
			<input type="password" class="login-text"/>
			<input type="submit" class="login-btn" value="로그인"/>
			<input type="button" class="login-btn" value="회원가입"/>
			<div class="easy-login">
				<div style="position:absolute;top:-8px;left:20px;background-color:white;font-size:15px;">간편로그인</div>
				<img src="/resources/images/ui/Naver_login.PNG" style="width:60px;"/>
				<img src="/resources/images/ui/Google_login.png" style="width:60px;margin-left:20px;"/>
				<img src="/resources/images/ui/Facebook_login.png" style="width:60px;margin-left:20px;"/>
			</div>
			<a href="#" class="find-btn">아이디 찾기</a>
			<a href="#" class="find-btn">비밀번호 찾기</a>
		</div>
	</div>
</body>
</html>