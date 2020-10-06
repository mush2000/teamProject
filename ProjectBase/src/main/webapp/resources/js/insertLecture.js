/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//강의 등록버튼 눌렀을때 
	$(document).on('click', '#insertLectureBtn', function() {
		var classesCode = $('#classesCode').val();
		var locCode = $('#locCode').val();
		var classTime = $('#classTime').val();
		var startDate = $('#startDate').val();
		var regStartDate = $('#regStartDate').val();
		var regEndDate = $('#regEndDate').val();
		var instNum = $('#instNum').val();
		var classLv = $('#classLv').val();
		var classStatus = $('#classStatus').val();
		//Ajax 시작
		$.ajax({
		      url: 'insertLecture2.do', //요청경로
		      type: 'post',
		      data: {'classesCode':classesCode, 'locCode':locCode, 'classTime':classTime,
		    	  'startDate':startDate, 'regStartDate':regStartDate, 'regEndDate':regEndDate,
		    	  'instNum':instNum, 'classLv':classLv, 'classStatus':classStatus }, 
		    	  //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		       alert('Lecture 등록 성공')
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('Lecture 등록 실패(예외발생)')

		      }
		});
		
	});
	
	
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);