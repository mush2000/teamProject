<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<link rel="stylesheet" type="text/css" href="resources/css/reset.css"/>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- Jquey를 사용을 위한 태그 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery.validate.js"></script>
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
	background-color: black;
}
.menuDiv{
	height: 25%;
	padding: 0 0 0 0;
}

.mainDiv{
	height: 75%;
	padding: 0 0 0 0;
}
</style>
<script type="text/javascript">
//validate에 정규식 사용하게 설정
$.validator.addMethod('regx', function(value, element, regexpr){
	return regexpr.test(value);
});
</script>
</head>
<body>
<div class="myContainer">
	<div class="row menuDiv">
		<div class="col-md-12">
			<div class="col-md-2"></div>
			<div class="col-md-8" style="background-color: red;"><tiles:insertAttribute name="menu" /></div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<div class="row mainDiv">
		<div class="col-md-12">
			<div class="col-md-2"></div>
			<div class="col-md-8" style="background-color: blue;"><tiles:insertAttribute name="body" /></div>
			<div class="col-md-2"></div>
		</div>
	</div>
</div>
</body>
</html>
















