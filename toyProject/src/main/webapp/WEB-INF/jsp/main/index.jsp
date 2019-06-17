<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
.desc_part1{width:100vw;height:600px;background-color:#008299;display:-webkit-flex;display: flex;flex-direction: row;justify-content: center;align-items: center;}
.desc_part{width:100vw;height:600px;background-color:white;display:-webkit-flex;display: flex;flex-direction: row;justify-content: center;align-items: center;}
.desc_text{width:400px;height:auto;color:black;margin-top:30px;line-height: 40px;letter-spacing: 3px;}
.desc_text .desc-title{font-size:30px;color:black;font-weight:bold;}
.desc_text .desc-desc{font-size:18px;color:black;font-weight:bold;}
.desc_part1 .desc_text .desc-title{color:white;}
.desc_part1 .desc_text .desc-desc{color:white;}
.img{width:400px;height:400px;background-color:white;margin:20px;}
.start-btn{width:200px;height:40px;text-align:center;font-size:20px;font-family:LotteMartDream;background-color:white;color:#008299;border:0;box-shadow: 2px 2px 2px 2px rgba(0,0,0,0.2);}
.start-btn:hover{color:white;background-color:#005E75;cursor:pointer;}
@media(max-width: 950px){
.desc_part1{flex-direction:column-reverse;height:800px;}
.desc_part1 .img{margin-top:20px;margin-left:0px;}
}
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
                <button  class="start-btn">시작하기</button>
            </div>
        </div>
    </div>
</body>
</html>
