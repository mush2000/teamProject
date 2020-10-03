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
<form action="insertMember.do" id="joinForm" method="post">
	<input type="text" placeholder="id" name="memberId" id="memberId">
	<input type="button" value="아이디중복확인" id="existId"><br>
	<input type="password" placeholder="pw" name="memberPw" id="inputPassword"><br>
	<input type="password" placeholder="re-pw" name="memberRepeatPw"><br>
	<input type="text" placeholder="name" name="memberName"><br>
	<input type="date" placeholder="birthday" name="memberBirthday" value="2000-01-01"><br>
	<input type="text" placeholder="addr" id="memberAddr1" style="width: 40em;" readonly><br>
	<input type="text" placeholder="나머지 주소" id="memberAddr2" style="width: 40em;" readonly><br>
	<input type="hidden" name="memberAddr" id="memberAddr">
	<select id="memberTel1_1">
		<option>010</option>
		<option>011</option>
		<option>016</option>
		<option>017</option>
		<option>018</option>
		<option>019</option>
	</select>-
	<input type="hidden" name="memberTel">
	<input type="text" id="memberTel1_2" class="inputTel">-<!--  onkeyup="inputCnt();">- -->
	<input type="text" id="memberTel1_3" class="inputTel"><br>
	<select id="memberTel2_1">
		<option>010</option>
		<option>011</option>
		<option>016</option>
		<option>017</option>
		<option>018</option>
		<option>019</option>
	</select>-
	<input type="hidden" name="memberTel2">
	<input type="text" id="memberTel2_2" class="inputTel">-
	<input type="text" id="memberTel2_3" class="inputTel"><br>
	<input type="text" placeholder="email" name="memberEmail">@
	<input type="text" placeholder="email" name="memberEmail">
	<select class="emailUri">
		<option value="inputUri" selected>직접입력</option>
		<option value="naver.com">네이버</option>
		<option value="hanmail.net">다음</option>
		<option value="nate.com">네이트</option>
		<option value="gmail.com">구글</option>
	</select>
	
	성별<input type="radio" name="memberGender" value="M" checked>남<input type="radio" name="memberGender" value="F">여<br>
	<input type="button" id="submitBtn" value="가입">
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
		엔터 안먹힘<input type="hidden" name="keyword" id="keyword">
		<input type="checkbox" id="area">전지역
		
		<!-- 요청 변수 설정 (키워드) -->
		<input type="button" onClick="getAddrLoc();" value="주소검색하기">
		<div id="list"></div>
		<!-- 검색 결과 리스트 출력 영역 -->
<!-- 	</form> -->





<script src="resources/js/joinMember.js?ver=1"></script>
</body>
</html>