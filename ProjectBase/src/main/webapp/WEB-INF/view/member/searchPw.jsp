<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/sample.css?ver=2"/>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!-- sample.css 파일 사용을 위한 태그 -->

<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/searchPw.js"></script>


</head>
<body>
<div>비번찾기</div>
<form action="searchPw.do" method="post">
	I D<input type="text" name="memberId"><br>
	이름<input type="text" name="memberName"><br>
	이메일<input type="text" name="memberName"><br>
	<input type="submit" value="비밀번호 찾기"><br>
	<span id="searchId">아이디찾기</span> / <span id="login">로그인</span>
</form>
</body>
</html>