<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css를 사용하기 위한 태그 -->
<link rel="stylesheet" type="text/css" href="resources/css/mainPage.css?ver=7"/>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/>


<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<!-- ####캐러셀시작#### -->
<div align="center" id="carousel-example-generic" class="carousel slide container" data-ride="carousel" style="width: 1200px;">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		<li data-target="#carousel-example-generic" data-slide-to="3"></li>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox" align="center">
		<div class="item active">
			<img src="resources/images/health.jpg" alt="...">
			<div class="carousel-caption">
				<font style="font-family: 'S-CoreDream-4Regular'; font-size: 2em;">헬스</font>
				<hr>
				<input type="button" value="강의안내"> <input type="button" value="강사안내"> <input type="button" value="수강신청">
				<br><br>
			</div>
		</div>
		<div class="item">
			<img src="resources/images/screen-golf.jpg" alt="...">
			<div class="carousel-caption">
				<font style="font-family: 'S-CoreDream-4Regular'; font-size: 2em;">스크린골프</font>
				<hr>
				<input type="button" value="강의안내"> <input type="button" value="강사안내"> <input type="button" value="수강신청">
				<br><br>
			</div>
		</div>
		<div class="item">
			<img src="resources/images/yoga.jpg" alt="...">
			<div class="carousel-caption">
				<font style="font-family: 'S-CoreDream-4Regular'; font-size: 2em;">요가/필라테스</font>
				<hr>
				<input type="button" value="강의안내"> <input type="button" value="강사안내"> <input type="button" value="수강신청">
				<br><br>
			</div>
		</div>
		<div class="item">
			<img src="resources/images/tennis.jpg" alt="...">
			<div class="carousel-caption">
				<font style="font-family: 'S-CoreDream-4Regular'; font-size: 2em;">테니스/스쿼시</font>
				<hr>
				<input type="button" value="강의안내"> <input type="button" value="강사안내"> <input type="button" value="수강신청">
				<br><br>
			</div>
		</div>
	</div>
	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- ####캐러셀끝#### -->
<div style="height: 50px;"></div>
</body>

<!-- js를 사용하기 위한 태그 -->
<script src="resources/js/mainPage.js"></script>
</html>