<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?ver=1"/>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title><tiles:insertAttribute name="title" /></title>
<style type="text/css">
label.error{
	color: red;
	font-size: 12px;
	display: block;		
}

.myContainer{
	margin-right: auto;
	margin-left: auto;
	width: 100%;
}
</style>
<!-- Jquey를 사용을 위한 태그 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery.validate.js"></script>
<script type="text/javascript">
//validate에 정규식 사용하게 설정
$.validator.addMethod('regx', function(value, element, regexpr){
	return regexpr.test(value);
});
</script>
</head>
<body>
<div class="myContainer">
	<table class="template" style="width: 100%;">
		<tr>
			<td style="background-color: #35477D; text-align: center; border-bottom: 1px solid lightgray;"><tiles:insertAttribute name="menu" /></td>
		</tr>
		<tr>
			<td>
				<div style="height: 30px;"></div>
				<table style="width: 100%">
					<colgroup>
						<col width="25%"></col>
						<col width="*"></col>
						<col width="25%"></col>
					</colgroup>
					<tr>
						<td></td>
						<td><tiles:insertAttribute name="body" /></td>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
</body>
</html>