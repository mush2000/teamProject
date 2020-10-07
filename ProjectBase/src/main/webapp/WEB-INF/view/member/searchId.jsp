<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/js/searchId.js?ver=1"></script>


</head>
<body>
<div>비번찾기</div>
<form action="searchPw.do" method="post" id="searchIdForm">
	이름<input type="text" name="memberName"><br>
	이메일<input type="hidden" name="memberEmail" id="memberEmail">
	<input type="text" placeholder="email" name="memberEmailId" id="memberEmail1">@
	<input type="text" placeholder="email" name="memberEmailUri" id="memberEmail2">
	<select id="emailUri">
		<option value="inputUri" selected>직접입력</option>
		<option value="naver.com">네이버</option>
		<option value="hanmail.net">다음</option>
		<option value="nate.com">네이트</option>
		<option value="gmail.com">구글</option>
	</select><br>
	<input type="submit" id="submitBtn" value="비밀번호 찾기"><br>
	<span id="searchPw">비밀번호찾기</span> / <span id="login">로그인</span>
</form>
</body>
</html>