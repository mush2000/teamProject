<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%response.setCharacterEncoding("UTF-8"); %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/JavaScript" src="/js/jquery-1.8.3.min.js" ></script> -->

<style type="text/css">
.choiceAddr, .pageNum:hover {
	cursor: pointer;
}
</style>
<title></title>
</head>
<body>
<form action="insertMember.do" method="post">
	<input type="text" placeholder="id" name="memberId"><br>
	<input type="text" placeholder="pw" name="memberPw" id="inputPassword"><br>
	<input type="text" placeholder="re-pw" name="memberRepeatPw"><br>
	<input type="text" placeholder="name" name="memberName"><br>
	<input type="date" placeholder="birthday" name="memberBirthday"><br>
	<input type="text" placeholder="addr" name="memberAddr" id="memberAddr1" style="width: 40em;"><br>
	<input type="text" placeholder="나머지 주소" name="memberAddr" id="memberAddr4" style="width: 40em;"><br>
	<input type="text" placeholder="tel" name="memberTel"><br>
	<input type="text" placeholder="tel2" name="memberTel2"><br>
	<input type="email" placeholder="email" name="memberEmail"><br>
	성별<input type="radio" name="memberGender" value="M" checked>남<input type="radio" name="memberGender" value="F">여<br>
	<input type="submit" value="가입">
</form>




 	<form name="form" id="form" method="post">
		<input type="hidden" name="currentPage" id="currentPage" value="1">
		<!-- 요청 변수 설정 (현재 페이지. currentPage : n > 0) -->
		<!-- <input type="text" name="countPerPage" value="10"> -->
		<!-- 요청 변수 설정 (페이지당 출력 개수. countPerPage 범위 : 0 < n <= 100) -->
		<!-- <input type="text" name="resultType" value="json"> -->
		<!-- 요청 변수 설정 (검색결과형식 설정, json) -->
<!-- 		<input type="text" name="confmKey" id="confmKey"
			style="width: 250px; display: none"
			value="U01TX0FVVEgyMDIwMDkyODE1MTkzMjExMDI0MTI=" /> -->
<!-- 		<input type="hidden" name="confmKey" id="confmKey" value="U01TX0FVVEgyMDIwMDkyODE1MTkzMjExMDI0MTI="> -->
		<!-- 요청 변수 설정 (승인키) -->
		<!-- <input type="text" name="keyword" value="" onkeydown="enterSearch();"> -->
		<input type="text" id="tKeyword" value="" onkeydown="enterSearch();">
		<input type="hidden" name="keyword" id="keyword">
		<input type="checkbox" id="area">전지역
		
		<!-- 요청 변수 설정 (키워드) -->
		<input type="button" onClick="getAddrLoc();" value="주소검색하기">
		<div id="list"></div>
		<!-- 검색 결과 리스트 출력 영역 -->
<!-- 	</form> -->





<script src="resources/js/joinMember.js?ver=1"></script>
</body>
</html>