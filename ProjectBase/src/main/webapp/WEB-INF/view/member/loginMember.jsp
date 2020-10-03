<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%response.setCharacterEncoding("UTF-8"); %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#searchPw, #searchId:hover {
	cursor: pointer;
}
</style>
<title></title>
</head>
<body>
<form action="loginMember.do" id="loginForm" method="post">
	<input type="text" placeholder="id" name="memberId" id="memberId"><br>
	<input type="password" placeholder="pw" name="memberPw" id="inputPassword"><br>
	<input type="submit" value="로그인"><input type="button" value="회원가입" onclick="location.href='joinPage.do';">
</form>
<span id="searchPw">비밀번호찾기</span> / <span id="searchId">아이디찾기</span>
<script src="resources/js/loginMember.js?ver=1"></script>
</body>
</html>