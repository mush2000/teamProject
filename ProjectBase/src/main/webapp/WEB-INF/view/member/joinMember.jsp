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
	<input type="text" placeholder="re-pw" name="memberPw"><br>
	<input type="text" placeholder="name" name="memberName"><br>
	<input type="date" placeholder="birthday" name="memberBirthday"><br>
	<input type="text" placeholder="addr" name="memberAddr"><br>
	<input type="text" placeholder="tel" name="memberTel"><br>
	<input type="text" placeholder="tel2" name="memberTel2"><br>
	<input type="email" placeholder="email" name="memberEmail"><br>
	성별<input type="radio" name="memberGender" value="M">남<input type="radio" name="memberGender" value="F">여<br>
	<input type="submit" value="가입">
</form>

<!-- 우편번호 -->
<script type="text/JavaScript"    src="http://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/JavaScript"    src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
   function openDaumZipAddress() {
      new daum.Postcode({
         oncomplete : function(data) {
            jQuery("#zonecode").val(data.zonecode);
            jQuery("#address").val(data.address);
            jQuery("#address_etc").focus();
            console.log(data);
         }
      }).open();
   }
</script>


               <input id="zonecode" type="text" value="" style="width: 60px;" placeholder="우편번호" readonly required />&nbsp;
               <input type="button" onClick="openDaumZipAddress();" value="주소찾기" /><br/>
               <input type="text" id="address" value="" style="width: 240px;" placeholder="도로명주소" readonly required />
               <input type="text" id="address_etc" value="" style="width: 200px;" placeholder="나머지 상세주소" required />









</body>
</html>