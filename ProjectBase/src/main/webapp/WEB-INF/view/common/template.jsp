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
body{
	overflow-y: scroll !important; 
}
label.error{
	color: red;
	font-size: 12px;
	display: block;		
}

.myContainer{
	padding: 0 0 0 0;
	margin: 0 0 0 0;
	margin-bottom: 0px;
	width: 100%;
	height: 100%
}

/* 버튼css */
input[type="button"]
, input[type="submit"]{
    height: 28px;
    padding: 0 18px;
    margin-right: 8px;
    box-sizing: border-box;
    font-size: 13px;
    color: white;
    border: 1px solid #0034a9;
    background-color: #0034a9;
    border-radius: 3px;
    cursor: pointer;
}

.bottomTd{
	padding: 0;
	margin: 0;
}

table{
	table-layout: fixed;
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
	<table class="template" style="width: auto; height: auto; position: absolute;">
		<tr>
			<td class="tempMenuTd" style="width:100%; height: 250px; background-color: #003aae; background-repeat: no-repeat; background-image: url('resources/images/title_back.png'); border-bottom: 1px solid lightgray;"><tiles:insertAttribute name="menu" /></td>
		</tr>
		<tr>
			<td>
				<div style="height: 50px;"></div>
				<table style="width: 100%;">
					<colgroup>
						<col width="*"></col>
					</colgroup>
					<tr>
						<td><tiles:insertAttribute name="body" /></td>
					</tr>
				</table>
				<div style="height: 50px;"></div>
			</td>
		</tr>
		<tr style="margin-bottom: 0px;">
			<td class="bottomTd" style="width: 100%;">
				<tiles:insertAttribute name="foot" />
			</td>
		</tr>
	</table>
</div>
</body>
</html>