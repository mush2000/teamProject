<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="insertMember.do" method="post">
	<input type="text" placeholder="id" name="memberId"><br>
	<input type="text" placeholder="pw" name="memberPw"><br>
	<input type="text" placeholder="name" name="memberName"><br>
	<input type="text" placeholder="age" name="memberAge"><br>
	<input type="text" placeholder="addr" name="memberAddr"><br>
	<input type="text" placeholder="tel" name="memberTel"><br>
	<input type="text" placeholder="tel2" name="memberTel2"><br>
	성별<input type="radio" name="memberGender" value="M">남<input type="radio" name="memberGender" value="F">여<br>
	<input type="submit" value="가입">
</form>
</body>
</html>