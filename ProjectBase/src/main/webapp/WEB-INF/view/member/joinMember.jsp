<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="joinMember" method="post">
	<input type="text" placeholder="id" name="memberId">
	<input type="text" placeholder="pw" name="memberPw">
	<input type="text" placeholder="name" name="memberName">
	<input type="text" placeholder="age" name="memberAge">
	<input type="text" placeholder="addr" name="memberAddr">
	<input type="text" placeholder="tel" name="memberTel">
	<input type="text" placeholder="tel2" name="memberTel2">
	<input type="text" placeholder="gender" name="memberGender">
</form>
</body>
</html>