<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<link rel="stylesheet" href="/resources/css/ui.css">
<style>
@media(max-width: 950px){
.desc_part1{flex-direction:column-reverse;height:800px;}
.desc_part:nth-child(2n-1){flex-direction:column-reverse;height:800px;}
.desc_part:nth-child(2n){flex-direction:column;height:800px;}
.img{margin-top:20px;margin-left:0px;}
}
@media(min-width:450px){
.desc-title{font-size:30px;}
.desc-desc{font-size:18px;}
}
@media(max-width:450px){
.desc_text{width:70vw;}
.desc-title{font-size:20px;}
.desc-desc{font-size:14px;}
.img{width:70vw;height:70vw;}
}
@media(max-width:420px){
.header .logo{display:inline-block;float:none;margin-right:10px;position:relative;right:10px;}
.header .web-btn{display:none;}
.header .mobile-btn{display:block;}
}

</style>
<script type="text/javascript" src="/resources/js/jquery-1.8.3.min.js"></script>
<script>

</script>
</head>
<body>
    <div class="header">
        <div class="logo">logo</div>
        <div class="web-btn">
	        <a class="header_btn" onclick="location.href='/login/register'" style="background-color:white;color:#008299;margin-right:30px;"><span>회원가입</span></a>
	        <a class="header_btn" onclick="location.href='/login/login'"><span>로그인</span></a>
        </div>
        <div class="mobile-btn">
        	
        </div>
        <div class="mobile-btnwrap">
        
        </div>
    </div>
    <div class="desc">
        <div class="desc_part1">
            <div class="desc_text">
                <span class="desc-title">편하게 일정을 관리하세요.</span><br/>
                <span class="desc-desc">팀,친구,커플과 일정을 공유하고<br/> 관리할 수 있습니다.</span><br/><br/>
                <button  class="start-btn">시작하기</button>
            </div>
            <div class="img"></div>
        </div>
        <div class="desc_part">
            <div class="img" style="background-color:#ccc;"></div>
            <div class="desc_text" >
                <span class="desc-title">편하게 일정을 관리하세요.</span><br/>
                <span class="desc-desc">팀,친구,커플과 일정을 공유하고<br/> 관리할 수 있습니다.</span><br/><br/>
            </div>
        </div>
        <div class="desc_part">
			<div class="desc_text" >
                <span class="desc-title">편하게 일정을 관리하세요.</span><br/>
                <span class="desc-desc">팀,친구,커플과 일정을 공유하고<br/> 관리할 수 있습니다.</span><br/><br/>
            </div>
            <div class="img" style="background-color:#ccc;"></div>
        </div>
    </div>
    <div class="footer">
    	<span> © Copyright 2019. All rights reserved.</span>
    </div>
</body>
</html>
