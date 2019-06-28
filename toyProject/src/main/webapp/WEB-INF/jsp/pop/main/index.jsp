<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Palendar-일정을 관리하세요</title>
<jsp:include page="/WEB-INF/jsp/pop/include/head.jsp"></jsp:include>
<style>
*{margin:0;padding:0;}
body{margin:0;padding:0;width:1300px;height:750px;overflow:hidden; background-image:url("/resources/images/upload/img_visual.jpg"); background-size:1300px 705px;background-repeat: no-repeat;}
.navi{width:1300px;height:50px;background-color:rgba(0,0,0,0.3);}
.navi .logo{width:250px;height:100%;float:left;}
.navi ul{width:1050px;height:100%;padding:0;margin:0;float:left;list-style:none;}
.navi ul li{width:130px;height:100%;text-align:center;float:left;display:flex;justify-content: center;align-items: center;color:white;font-size:13px;}
.navi ul li:hover{background-color:rgba(0,0,0,0.8);cursor:pointer;}
.leftMenu{width:250px;height:654px;float:left;background-color:rgba(0,0,0,0.5);}
.main-wrap{width:1050px;height:654px;float:left;}
.main-wrap .include-wrap{width:1000px;height:600px;background-color:rgba(0,0,0,0.3);margin-left:25px;margin-top:25px;}
.leftMenu .profile-wrap{width:100%;height:40%;}
.leftMenu .group{width:100%;height:60%;}
.leftMenu .profile-wrap .profile{width:100%;height:100%;display:flex;justify-content:center;align-items: center;flex-direction: column;color:white;font-size:15px;}
.leftMenu .profile-wrap .profile .profile-desc{width:auto;height:50px;color:white;margin-top:30px;padding-top:10px;}
.leftMenu .profile-wrap .profile .profile-img{width:100px;height:100px;border-radius:50%;background-color:white;background-size:cover;background-repeat: no-repeat;}

</style>
</head>
<body>
	<div class="navi">
		<div class="logo"></div>
		<ul>
			<li class="menuList">마이페이지</li>
			<li class="menuList">그룹</li>
			<li class="menuList">설정</li>
		</ul>
	</div>
	<div style="overflow:hidden;width:1300px;">
		<div class="leftMenu">
			<div class="profile-wrap">
				<div class="profile">
					<div class="profile-img" style="background-image:url('/resources/images/upload/홍길동.png')"></div>
					<div class="profile-desc">홍길동</div>
				</div>
			</div>
			<div class="group">
			
			</div>
		</div>
		<div class="main-wrap">
			<div class="include-wrap">
				<jsp:include page="/WEB-INF/jsp/pop/main/main.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>