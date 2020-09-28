<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/JavaScript" src="/js/jquery-1.8.3.min.js" ></script>

<script language="javascript">
function getAddrLoc(){
	// 적용예 (api 호출 전에 검색어 체크) 	
	if (!checkSearchedWord(document.form.keyword)) {
		return ;
	}

	$.ajax({
		 url :"getAddrApi.do"
		,type:"post"
		,data:$("#form").serialize()
		,dataType:"json"
		,success:function(jsonStr){
			$("#list").html("");
			var errCode = jsonStr.results.common.errorCode;
			var errDesc = jsonStr.results.common.errorMessage;
			if(errCode != "0"){
				alert(errCode+"="+errDesc);
			}else{
				if(jsonStr != null){
					makeListJson(jsonStr);
				}
			}
		}
	    ,error: function(xhr,status, error){
	    	alert("에러발생");
	    }
	});
}

function makeListJson(jsonStr){
	var htmlStr = jsonStr.results.common.totalCount;
	htmlStr += "<table>";
	$(jsonStr.results.juso).each(function(){
		htmlStr += "<tr>";
//		htmlStr += "<td>"+"A"+this.roadAddr+"</td>";
		htmlStr += "<td>"+"<a href='#'>"+this.zipNo;
		htmlStr += " "+this.roadAddrPart1;
//		htmlStr += "<td>"+"C"+this.roadAddrPart2+"</td>";
		htmlStr += " ("+this.jibunAddr+")"+"</a>"+"</td>";
//		htmlStr += "<td>"+"E"+this.engAddr+"</td>";
//		htmlStr += "<td>"+this.admCd+"</td>";
//		htmlStr += "<td>"+this.rnMgtSn+"</td>";
//		htmlStr += "<td>"+this.bdMgtSn+"</td>";
//		htmlStr += "<td>"+this.detBdNmList+"</td>";
		/** API 서비스 제공항목 확대 (2017.02) **/
//		htmlStr += "<td>"+this.bdNm+"</td>";
//		htmlStr += "<td>"+this.bdKdcd+"</td>";
//		htmlStr += "<td>"+this.siNm+"</td>";
//		htmlStr += "<td>"+this.sggNm+"</td>";
//		htmlStr += "<td>"+this.emdNm+"</td>";
//		htmlStr += "<td>"+this.liNm+"</td>";
//		htmlStr += "<td>"+this.rn+"</td>";
//		htmlStr += "<td>"+this.udrtYn+"</td>";
//		htmlStr += "<td>"+"J"+this.buldMnnm+"</td>";
//		htmlStr += "<td>"+"K"+this.buldSlno+"</td>";
//		htmlStr += "<td>"+this.mtYn+"</td>";
//		htmlStr += "<td>"+this.lnbrMnnm+"</td>";
//		htmlStr += "<td>"+this.lnbrSlno+"</td>";
//		htmlStr += "<td>"+this.emdNo+"</td>";
//		htmlStr += "</tr>";
	});
	htmlStr += "</table>";
	$("#list").html(htmlStr);
}
	
//특수문자, 특정문자열(sql예약어의 앞뒤공백포함) 제거
function checkSearchedWord(obj){
	if(obj.value.length >0){
		//특수문자 제거
		var expText = /[%=><]/ ;
		if(expText.test(obj.value) == true){
			alert("특수문자를 입력 할수 없습니다.") ;
			obj.value = obj.value.split(expText).join(""); 
			return false;
		}
		
		//특정문자열(sql예약어의 앞뒤공백포함) 제거
		var sqlArray = new Array(
			//sql 예약어
			"OR", "SELECT", "INSERT", "DELETE", "UPDATE", "CREATE", "DROP", "EXEC",
             		 "UNION",  "FETCH", "DECLARE", "TRUNCATE" 
		);
		
		var regex;
		for(var i=0; i<sqlArray.length; i++){
			regex = new RegExp( sqlArray[i] ,"gi") ;
			
			if (regex.test(obj.value) ) {
			    alert("\"" + sqlArray[i]+"\"와(과) 같은 특정문자로 검색할 수 없습니다.");
				obj.value =obj.value.replace(regex, "");
				return false;
			}
		}
	}
	return true ;
}

function enterSearch() {
	var evt_code = (window.netscape) ? ev.which : event.keyCode;
	if (evt_code == 13) {    
		event.keyCode = 0;  
		getAddrLoc(); 
	} 
}
</script>
<title></title>
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




	<form name="form" id="form" method="post">
		<input type="text" name="currentPage" value="1" />
		<!-- 요청 변수 설정 (현재 페이지. currentPage : n > 0) -->
		<input type="text" name="countPerPage" value="10" />
		<!-- 요청 변수 설정 (페이지당 출력 개수. countPerPage 범위 : 0 < n <= 100) -->
		<input type="text" name="resultType" value="json" />
		<!-- 요청 변수 설정 (검색결과형식 설정, json) -->
		<input type="text" name="confmKey" id="confmKey"
			style="width: 250px; display: none"
			value="U01TX0FVVEgyMDIwMDkyODE1MTkzMjExMDI0MTI=" />
		<!-- 요청 변수 설정 (승인키) -->
		<input type="text" name="keyword" value="" onkeydown="enterSearch();" />
		<!-- 요청 변수 설정 (키워드) -->
		<input type="button" onClick="getAddrLoc();" value="주소검색하기" />
		<div id="list"></div>
		<!-- 검색 결과 리스트 출력 영역 -->
	</form>






</body>
</html>