/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//강의메뉴 Ajax 시작 (DB에 들어있는 강의정보를 하위메뉴로 표시)
	$.ajax({
	      url: 'lectureList.do', //요청경로
	      type: 'post',
	      data: {}, 
	    	  //요청경로로 던질 파라메터. '파레메터명':파라메터
	      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
			  var lec = '';
			  var inst = '';
	    	  $(result).each(function(index, element){
	    		  var temp = '강사';
	    		  lec += '<a href="classesDetail.do?classesCode='+ element.classesCode +'">' + element.classesName + '</a>';
	    		  if(element.classesCode == 61)
	    			  temp = '트레이너';
	    		  inst += '<a href="instructorDetail.do?classesCode='+ element.classesCode +'">' + element.classesName + temp + '</a>';
	    	  });

	       
	    	  $('#lectureInfo').html(lec);
	    	  $('#instructorInfo').html(inst);
	      },
	      error: function(){ //ajax통신 실패 시 실행부분
	    	  alert('예외발생')

	      }
	});
	
	//게시판메뉴 Ajax 시작 (DB에 들어있는 게시판종류를 하위메뉴로 표시)
	$.ajax({
		url: 'boardKindList.do', //요청경로
		type: 'post',
		//async: false,
		data: {}, 
		//요청경로로 던질 파라메터. '파레메터명':파라메터
		success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
			var str = '';
			$(result).each(function(index, element){
				str += '<a href="board.do?kindCode='+ element.kindCode +'">' + element.kindName + '</a>';
			});
			
			$('#boardKindInfo').html(str);
		},
		error: function(){ //ajax통신 실패 시 실행부분
			alert('예외발생');
			
		}
	});
	
	//화면 로딩시 로그인한 사람의 아이디와 이름값 가져옴
	var menuMemId = $('#menuMemId').val();
	var menuMemName = $('#menuMemName').val();
	
	//로그인한 사람의 아이디가 ADMIN이면 신규대관예약 배지알림표시
	if(menuMemId != null && menuMemId == 'admin'){
		$.ajax({
			url: 'selectPlaceRentalCnt.do',
			type: 'post',
			//async: false,
			data: {}, 
			success: function(result) { 
				$('#welcomeLogin').empty();
				var str = '';
				str += '<span style="font-weight: bold; color: white;">' + menuMemName + '</span><span style="color: white;">님(강사) 반갑습니다.</span>';
				//신규예약이 없으면 그냥 로그인 정보만 알려줌
				if(result == 0){
					str += '&nbsp;<span style="text-align: center; background-color: gray; color: white; padding: 1px 6px 1px 6px; border-radius: 10px;" title="예약신청된 대관이 없습니다.">' + result + '</span>'
				//신규예약이 있으면 표시될 노드 (배지알림)
				}else if(result < 10){
					str += '&nbsp;<span class="rentalCnt" style="text-align: center; background-color: red; color: white; padding: 1px 7px 1px 6px; border-radius: 10px;" onclick="' + 'location.href=`placeRentalManager.do`;' + '" title="대관예약대기 총' + result + '건이 있습니다.">' + result + '</span>'
				}else{
					str += '&nbsp;<span class="rentalCnt" style="text-align: center; background-color: red; color: white; padding: 1px 6px 1px 4px; border-radius: 10px;" onclick="' + 'location.href=`placeRentalManager.do`;' + '" title="대관예약대기 총' + result + '건이 있습니다.">' + result + '</span>'
				}
				str += '<br>';
				str += '<input type="button" class="myInfoBtn" value="내정보관리" onclick="location.href=`memberInformation.do`;">';
				str += '<input type="button" class="logoutBtn" value="로그아웃" onclick="location.href=`logout.do`;">';
				$('#welcomeLogin').append(str);
				
			},
			error: function(){ //ajax통신 실패 시 실행부분
				alert('예외발생');
				
			}
		});
	}
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);