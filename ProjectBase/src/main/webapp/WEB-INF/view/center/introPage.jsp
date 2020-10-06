<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 웹폰트 : 데이즈원체 -->
<link href="https://fonts.googleapis.com/css2?family=Days+One&display=swap" rel="stylesheet">

<!-- css를 사용하기 위한 태그 -->
<link rel="stylesheet" type="text/css" href="resources/css/introPage.css?ver=7"/>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/>

<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 카카오맵API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=666fc1250fa79f4d0446a9ec36e1e03a"></script>
</head>
<body>
<div class="row">
	<div class="col-md-12">
		<div class="col-md-offset-3 col-md-6">
			<div role="tabpanel" class="introTab">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#centerIntro" aria-controls="centerIntro" role="tab" data-toggle="tab">센터소개</a></li>
					<li role="presentation"><a href="#centerInfo" aria-controls="centerInfo" role="tab" data-toggle="tab">시설현황</a></li>
					<li role="presentation"><a href="#centerLoc" aria-controls="centerLoc" role="tab" data-toggle="tab">위치안내</a></li>
				</ul>
			
				<!-- Tab panes 시작 -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="centerIntro">
						<div class="row">
							<br><br>
							<div class="col-md-12">
								<div class="left col-md-8">
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #0034a9; font-weight: bold">Ulsan</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #ffcc00; font-weight: bold">&nbsp;KH</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #bbbbbb; font-weight: bold">&nbsp;Sports Center</span>
									<br>
									<span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">울산</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #ffcc00;">KH</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">스포츠센터</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #666666;">는 수강생들이 건강하고 가치 있는 미래를<br>창조해 갈 수 있도록 언제나 문이 활짝 열려져 있습니다.</span>
								</div>
								<div class="right col-md-4" align="right">
									<img src="resources/images/open.png" width="230px">
								</div>
							</div>
						</div>
						<hr style="border: 0.5px solid #0034a9;">
						<div class="row">
							<div class="col-md-12">
								<span class="glyphicon glyphicon-grain" style="font-size: 2em; color: #0034a9;"></span><span style="font-family: 'S-CoreDream-5Medium'; font-size: 2em;">센터소개</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="left">
									<br>
									<p style="font-family: 'NanumSquareRound'; font-size: 1.2em; padding: 5px;">
										&nbsp;2020년 10월 개관한 울산KH스포츠센터는 연건평 3,500여 평으로
										국내 스포츠센터 중 가장 긴 50M 길이의 수영장을 보유하고 있습니다.
										또한, 오토시스템을 갖춘 골프장 및 검도, 배드민턴, 농구 등
										다양한 구기 스포츠가 가능한 실내체육관이 있습니다.
										<br><br> 
										&nbsp;그 외에도 요가, 재즈, 나이트댄스를 강습하는 스포츠교실
										그리고 최고급형 헬스기구를 갖춘 헬스장과 하체강화 및
										심폐지구력 증대를 위한 스피닝기구를 갖춘 GX-룸,
										운동의 의학적 검진 및 상담을 위한 운동처방실 등을
										갖추고 있습니다.
										울산시민들의 복지시설로서 역할은 물론 지역
										주민들의 건전한 여가 선용과 체력증진을 위한 공간으로서
										기능을 위해 최선의 노력을 기울이고 있습니다.
									</p>
								</div>
								<div class="right">
									<br>
									<p style="font-family: 'NanumSquareRound'; font-size: 1.2em; padding: 5px;">
										&nbsp;시내 간선도로에 인접하고 있어 접근성이 용이하며 강습생을 위한
										주차장 및 스낵바 등 부대시설이 마련되어 있으며,
										아침 6시부터 저녁 10시까지 운영되고 있습니다.
										<br><br>
										&nbsp;언제나 쾌적하고 깨끗한 시설로서 차별화되고 다양한 강좌를 개설하여
										이용하는 수강생들이 더욱 가치 있는 삶을 창조해 갈 수 있도록 하겠습니다.
									</p>
								</div>
							</div>
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade in" id="centerInfo">
						<div class="row">
							<br><br>
							<div class="col-md-12">
								<div class="left col-md-8">
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #0034a9; font-weight: bold">Ulsan</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #ffcc00; font-weight: bold">&nbsp;KH</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #bbbbbb; font-weight: bold">&nbsp;Sports Center</span>
									<br>
									<span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">울산</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #ffcc00;">KH</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">스포츠센터</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #666666;">는 수강생들이 건강하고 가치 있는 미래를<br>창조해 갈 수 있도록 언제나 문이 활짝 열려져 있습니다.</span>
								</div>
								<div class="right col-md-4" align="right">
									<img src="resources/images/open.png" width="230px">
								</div>
							</div>
						</div>
						<hr style="border: 0.5px solid #0034a9;">
						<div class="row">
							<div class="col-md-12">
								<span class="glyphicon glyphicon-home" style="font-size: 2em; color: #0034a9;"></span><span style="font-family: 'S-CoreDream-5Medium'; font-size: 2em;">시설현황</span>
							</div>
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade in" id="centerLoc">
						<div class="row">
							<br><br>
							<div class="col-md-12">
								<div class="left col-md-8">
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #0034a9; font-weight: bold">Ulsan</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #ffcc00; font-weight: bold">&nbsp;KH</span>
									<span style="font-family: 'Days One', sans-serif; font-size: 3em; color: #bbbbbb; font-weight: bold">&nbsp;Sports Center</span>
									<br>
									<span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">울산</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #ffcc00;">KH</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #0034a9;">스포츠센터</span><span style="font-family: 'NanumSquareRound'; font-size: 1.5em; color: #666666;">는 수강생들이 건강하고 가치 있는 미래를<br>창조해 갈 수 있도록 언제나 문이 활짝 열려져 있습니다.</span>
								</div>
								<div class="right col-md-4" align="right">
									<img src="resources/images/open.png" width="230px">
								</div>
							</div>
						</div>
						<hr style="border: 0.5px solid #0034a9;">
						<div class="row">
							<div class="col-md-12">
								<span class="glyphicon glyphicon-map-marker" style="font-size: 2em; color: #0034a9;"></span><span style="font-family: 'S-CoreDream-5Medium'; font-size: 2em;">위치안내</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div id="map" style="width:100vh; height:100vh;"></div>
								<script type="text/javascript">
									var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = { 
								        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
								        level: 3 // 지도의 확대 레벨
								    };
	
									var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
									// 지도를 클릭한 위치에 표출할 마커입니다
									var marker = new kakao.maps.Marker({ 
									    // 지도 중심좌표에 마커를 생성합니다 
									    position: map.getCenter() 
									}); 
									// 지도에 마커를 표시합니다
									marker.setMap(map);
								</script>
							</div>
						</div>
					</div>
				</div>
				<!-- Tab panes 끝 -->
				
				
			</div>
		</div>
	</div>
</div>

</body>
</html>