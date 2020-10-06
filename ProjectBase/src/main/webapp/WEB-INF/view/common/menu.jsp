<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/menu.css?ver=26">
</head>
<body>
<div style="height: 10px;"></div>
<div class="col-md-12">
	<div class="col-md-offset-10">
		<div class="row">
			<c:if test="${empty sessionScope.loginInfo.memberId }">
				<div class="col-md-12">
					<div class="col-md-8" style="font-family: 'S-CoreDream-4Regular';">
						<a href="loginPage.do" class="loginA">LOGIN</a>&nbsp;<font style="color: #ffcc00; font-family: 'S-CoreDream-4Regular';">│</font>&nbsp;<a href="joinPage.do" class="joinA">JOIN</a>
					</div>
				</div>
			</c:if>						
			<c:choose>
				<c:when test="${not empty sessionScope.loginInfo.memberId and sessionScope.loginInfo.stuNum ne 0}">
					<div class="row" style="font-family: 'S-CoreDream-4Regular';">
						<span style="font-weight: bold; color: white;">${sessionScope.loginInfo.memberName }</span><span style="color: white;">님(수강생) 반갑습니다.</span>
						&nbsp;
						<input type="button" class="myInfoBtn" value="내정보관리">
						<input type="button" class="logoutBtn" value="로그아웃">
					</div>
				</c:when>
				<c:when test="${not empty sessionScope.loginInfo.memberId and sessionScope.loginInfo.instNum ne 0}">
					<div class="row" style="font-family: 'S-CoreDream-4Regular';">
						<span style="font-weight: bold; color: white;">${sessionScope.loginInfo.memberName }</span><span style="color: white;">님(강사) 반갑습니다.</span>
						&nbsp;
						<input type="button" class="myInfoBtn" value="내정보관리">
						<input type="button" class="logoutBtn" value="로그아웃">
					</div>
				</c:when>
				<c:otherwise>
					<c:if test="${not empty sessionScope.loginInfo.memberId }">
						<div class="row" style="font-family: 'S-CoreDream-4Regular';">
							<span style="font-weight: bold; color: white;">${sessionScope.loginInfo.memberName }</span><span style="color: white;">님 반갑습니다.</span>
							&nbsp;
							<input type="button" class="myInfoBtn" value="내정보관리">
							<input type="button" class="logoutBtn" value="로그아웃">
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<div style="height: 50px;"></div>
<div class="col-md-12">
	<div class="col-md-offset-4 col-md-6 titleNameDiv">
		<img class="titleName" src="resources/images/title_name.png" onclick="location.href='mainPage.do';">
	</div>
</div>
<div style="height: 145px;"></div>
<div style="width:100%; height:100%;" class="col-md-offset-1" align="center">
	<nav style="font-size: 16px; font-family: 'S-CoreDream-5Medium';">
		<ul class="mainMenu" >
			<li>
				<a href="mainPage.do" class="mainMenuA">MAIN</a>
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="introPage.do" class="mainMenuA">센터안내</a>
				<ul class="subMenu">
					<li><a href="introPage.do" class="subMenuA">센터소개</a></li>
					<li><a href="b.do" class="subMenuA">시설현황</a></li>
					<li><a href="c.do" class="subMenuA">위치안내</a></li>
				</ul>	
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="#" class="mainMenuA">강의안내</a>
				<ul class="subMenu">
					<li><a href="d.do" class="subMenuA">수영</a></li>
					<li><a href="e.do" class="subMenuA">스크린골프</a></li>
					<li><a href="f.do" class="subMenuA">실내체육</a></li>
					<li><a href="g.do" class="subMenuA">스쿼시</a></li>
					<li><a href="h.do" class="subMenuA">GX</a></li>
					<li><a href="i.do" class="subMenuA">헬스</a></li>
					<li><a href="j.do" class="subMenuA">요가</a></li>
					<li><a href="k.do" class="subMenuA">필라테스</a></li>
				</ul>
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="#" class="mainMenuA">강사안내</a>
				<ul class="subMenu">
					<li><a href="l.do" class="subMenuA">수영강사</a></li>
					<li><a href="m.do" class="subMenuA">골프강사</a></li>
					<li><a href="n.do" class="subMenuA">스쿼시강사</a></li>
					<li><a href="o.do" class="subMenuA">요가강사</a></li>
					<li><a href="p.do" class="subMenuA">트레이너</a></li>
					<li><a href="q.do" class="subMenuA">시간제강사</a></li>
				</ul>
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="#" class="mainMenuA">대관안내</a>
				<ul class="subMenu">
					<li><a href="r.do" class="subMenuA">대관소개</a></li>
					<li><a href="s.do" class="subMenuA">대관신청</a></li>
					<li><a href="t.do" class="subMenuA">대관일정</a></li>
				</ul>	
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="#" class="mainMenuA">행사안내</a>
				<ul class="subMenu">
					<li><a href="u.do" class="subMenuA">센터행사</a></li>
					<li><a href="v.do" class="subMenuA">각종대회</a></li>
				</ul>	
			</li>&emsp;&emsp;&emsp;&emsp;
			<li>
				<a href="#" class="mainMenuA">고객센터</a>
				<ul class="subMenu">
					<li><a href="w.do" class="subMenuA">공지사항</a></li>
					<li><a href="x.do" class="subMenuA">Q&amp;A</a></li>
					<li><a href="y.do" class="subMenuA">강사지원</a></li>
				</ul>	
			</li>&emsp;&emsp;&emsp;&emsp;
			<c:if test="${sessionScope.loginInfo.memberId eq 'admin' }">
				<li>
					<a href="#" class="mainMenuA" style="color: #ffcc00"><span class="glyphicon glyphicon-wrench"></span>&nbsp;관리자</a>
					<ul class="subMenu">
						<li><a href="adminA.do" class="subMenuA">회원관리</a></li>
						<li><a href="adminB.do" class="subMenuA">강사관리</a></li>
						<li><a href="insertLecture.do" class="subMenuA">강좌등록</a></li>
						<li><a href="adminC.do" class="subMenuA">지원자관리</a></li>
						<li><a href="adminD.do" class="subMenuA">대관관리</a></li>
						<li><a href="adminE.do" class="subMenuA">게시판관리</a></li>
					</ul>	
				</li>&emsp;&emsp;&emsp;&emsp;
			</c:if>
		</ul>
	</nav>
</div>
</body>
</html>