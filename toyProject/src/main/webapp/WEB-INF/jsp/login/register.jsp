<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/ui.css">
<style>
body{text-align:center;}
.login-wrap{width:500px;height:80vh;margin-top:70px;display:inline-block;}
.login-wrap .login-logo{width:100%;height:100px;background-color:#aaa;}
.login-wrap .login-form{width:calc(100% - 30px);height:calc(100% - 100px);padding:15px;text-align:left;}
.login-form .login-desc{font-size:15px;}
.login-form .login-text{width:calc(100% - 15px);height:50px;margin-top:15px;margin-bottom:15px;border-radius: 5px;font-size:17px;padding-left:10px;}
.login-form .login-btn{width:100%;height:50px;margin-top:10px;font-size:17px;border:0;border-radius:5px;font-family:LotteMartDream;background-color:#008299;color:white;}
.login-form .login-btn:hover{cursor:pointer;}
.login-form .register-select{width:25%;height:50px;}
@media(max-width:500px){
.login-wrap{width:100vw;}
}
</style>
<script type="text/javascript" src="/resources/js/jquery-1.8.3.min.js"></script>
<script>
</script>
</head>
<body>
	<div class="login-wrap">
		<div class="login-logo"></div>
		<div class="login-form">
			<span class="login-desc">아이디</span><br>
			<input type="text" class="login-text" style="width:calc(100% - 135px);"/>
			<input type="button" class="login-btn" value="중복확인" style="width:100px;margin-top:0;margin-left:5px;" >
			<span class="login-desc">비밀번호</span>
			<input type="password" class="login-text"/>
			<span class="login-desc">비밀번호확인</span><br>
			<input type="password" class="login-text"/>
			<span class="login-desc">이름</span>
			<input type="text" class="login-text"/>
			<span class="login-desc">생년월일</span><br><br>
			<select class="register-select" id="join_year">
				<%
				int nowYear = Calendar.getInstance().get(Calendar.YEAR);
				for(int i = nowYear;i>1899;i--){
					%>
					<option value="<%=i %>"><%=i %></option>
					<%
				}
				%>
			</select>
			<label for=”join_year”>년</label>
			<select class="register-select" id="join_month"  style="margin-left:2%;">
			<%
				for(int i = 1;i<13;i++){
					%>
					<option value="<%=i %>"><%=i %></option>
					<%
				}
				%>
			</select>
			<label for=”join_month”>월</label>
			<select class="register-select"  id="join_day" style="margin-left:5px;">
			<%
				for(int i = 1;i<32;i++){
					%>
					<option value="<%=i %>"><%=i %></option>
					<%
				}
				%>
			</select>
			<label for=”join_day”>일</label>
			<input type="button" class="login-btn" value="회원가입"/>
		</div>
	</div>
	<div class="footer" style="height:calc(20vh - 75px);">
    	<span> © Copyright 2019. All rights reserved.</span>
    </div>
</body>
</html>