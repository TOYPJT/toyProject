<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@font-face {
   font-family: 'LotteMartDream';
   font-style: normal;
   font-weight: 300;
   src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff') format('woff');
 }
body{padding:0;margin:0;font-family:LotteMartDream;}
.header{width:100vw;height:70px;position:fixed;background-color:#008299;}
.header .logo{width:200px;color:white;height:43px;margin-left:10px;margin-top:5px;border:1px solid #bdbdbd;padding-top:17px;text-align:center;float:left;}
.header .header_btn{float:right;margin-right:10px;margin-top:15px;width:85px;height:28px;text-align:center;padding-top:9px;text-decoration:none;color:white;cursor:pointer;}
.desc{width:100vw;height:auto;}
.desc_part1{width:100vw;height:600px;background-color:#008299;display:-webkit-flex;display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;}
.desc_part1 .desc_text{width:700px;height:500px;float:left;color:black;background-color:white;margin-top:30px;}
</style>
<script type="text/javascript" src="/resources/js/jquery-1.8.3.min.js"></script>
<script>

</script>
</head>
<body>
	<div class="header">
		<div class="logo">logo</div>
		<a class="header_btn" style="background-color:white;color:#008299;"><span>회원가입</span></a>
		<a class="header_btn"><span>로그인</span></a>
	</div>
	<div class="desc">
		<div class="desc_part1">
			<div class="desc_text">편하게 일정을 관리하세요.</div>
			<div class="img"></div>
		</div>
	</div>
</body>
</html>