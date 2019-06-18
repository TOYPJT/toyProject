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





</body>
</html>