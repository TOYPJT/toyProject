<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
HelloWorld!!!! 
<br/>

유저 목록 : ${list }
<br/>


<c:forEach items="${list}" var="user">

${user.userId } <input type="button" value="삭제" OnClick="window.location='<%=request.getContextPath()%>/delMember?user_id=${user.userId}'" >
<br/>


</c:forEach>
<button class="btn_sns_login" id="btn_kakao" onclick="javascript:kakaoLogin();">카카오톡으로 로그인</button>

<!--카카오-->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>  
 Kakao.init("");
 
 function kakaoLogin(){
  Kakao.Auth.login({      
   success: function(authObj) {
    Kakao.API.request({
     url: '/v1/user/me',
     success: function(res) {
      epassUserCheck(res.kaccount_email, '카카오');
      //Kakao.Auth.logout();
      //alert(JSON.stringify(res));             
      //$("#kakao-profile").append(res.id+"|"+res.properties.nickname);
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


</body>
</html>