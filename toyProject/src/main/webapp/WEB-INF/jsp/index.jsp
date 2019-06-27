<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
테스트페이지 
<br/>

유저 목록 : ${list }
<br/>


<c:forEach items="${list}" var="user">

${user.userId } <input type="button" value="삭제" OnClick="window.location='<%=request.getContextPath()%>/delMember?user_id=${user.userId}'" >
<br/>


</c:forEach>

<img  src="/resources/images/ui/kakao_loginBtn.png" 
onclick="javascript:kakaoLogin();"
style="cursor:pointer;"/>


		<!-- //login_type e -->
			<div id="naver_id_login" style="width: 0px;height: 0px"></div>
			
			<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
						
			  <script type="text/javascript">
			  var naver_id_login = new naver_id_login("cwuVTNBPw_SL0YSCV31P", "http://localhost:8099/");
				var state = naver_id_login.getUniqState();
				naver_id_login.setButton("white", 2,40);
				naver_id_login.setDomain(".sevice.com");
				naver_id_login.setState(state);
				naver_id_login.setPopup();
				naver_id_login.init_naver_id_login();
				
				  function fnLoginNaver() {
					  $("#naver_id_login_anchor").click();
				  }
		
		
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert(naver_id_login.getProfileData('email'));
			alert(naver_id_login.getProfileData('nickname'));
		}
	</script>

<div id="kakao-profile"></div>

<!--카카오-->
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
      document.getElementById("kakao-profile").append(res.properties.nickname+"님 ");
      document.getElementById("kakao-profile").append(res.kaccount_email);
      //$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
  		window.location = <%=request.getContextPath()%>"\save?user_id="+res.kaccount_email+"&user_password=1234&user_nm="+res.properties.nickname;
      
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


</body>
</html>