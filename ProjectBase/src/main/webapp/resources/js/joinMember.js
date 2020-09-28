/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	alert('joinMember.js 로딩 성공');
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
	
	$("#joinForm").validate({
        //테스트를 위하여 유효성 검사가 완료되어도 submit을 처리하지 않음.
		debug : false,
		onsubmit: true,
        //입력태그에 focus가 들어왔을때 유효성을 검사한다
		onfocusin: true,
		onkeyup: true,
		onfocusout: function(element) { $(element).valid(); },
//		onfocusout: false,
		//검사할 필드와 검사 항목의 나열
//        groups:{
//           socialNum : 'socialNum1 socialNum2',
//           emergencyPhoneNum : 'emergencyPhoneNum2 emergencyPhoneNum3',
//           phoneNum : 'phoneNum2 phoneNum3'
//        },
		rules : {
          // className:{
          //    required : true             //필수여부 지정
                //digits : true,               //숫자만 입력 지정
               // email : true,                //이메일만 입력 지정
               // url : true,                  //url만 입력 지정
               // minlength : 4,               //최소길이 지정
               // maxlength : 8,               //최대길이 지정
               // equalTo : "대상요소의 id 값" //특정 요소와 입력값이 같은지 여부 검사
          // },
			memberId:{
				required : true,
				minlength : 6,
				maxlength : 12,
				regx:/^[a-zA-Z0-9]*$/i //영어&숫자만
			},
			
			memberPw:{
				required : true,
				minlength : 6,
				maxlength : 18,
				regx:/^[a-zA-Z0-9]*$/i //영어&숫자만
			},
			
			memberRepeatPw:{
				required : true,
				equalTo : inputPassword
			},
			
			memberName:{
				required : true,
				minlength : 3,
				maxlength : 18,
			},
			
			memberBirthday:{
				required : true,
				minlength : 10,
				maxlength : 11,
				regx:/^0[0-9]*$/i
			},
						
			
			memberAddr:{
				required : true,
				minlength : 10,
				maxlength : 11,
				regx:/^0[0-9]*$/i
			},
			
			memberTel:{
				required : true,
				minlength : 10,
				maxlength : 11,
				regx:/^0[0-9]*$/i
			},
			
			memberTel2:{
				minlength : 10,
				maxlength : 11,
				regx:/^0[0-9]*$/i
			},
			
			memberEmail:{
				required : true,
				maxlength : 50,
			},

		},
        //검사를 충족하지 못할 경우 표시될 메시지의 나열
		messages : {
          // className : "과정명을 입력하세요.",
          // className : {
          //      required : "필수 입력 항목 입니다.",
           //     number : "숫자만 입력하세요.",
          //      minlength : "최소 {0}글자 입니다.",
           //     maxlength : "최대 {0}글자 입니다.",
           //     equalTo : "입력이 잘못되었습니다."
           // },
           //memberId:'ID를 입력하세요',
			memberId:{
				required: 'ID는 필수항목입니다.',
				minlength:'ID는 2자 이상 입력하세요.',
				maxlength:'ID는 10자를 초과할 수 없습니다.',
				regx:'영어와 숫자만 사용가능합니다.'
			},
			
			memberPw:{
				required: '비밀번호는 필수항목입니다.',
				minlength:'비밀번호는 {0}자 이상 입력하세요.',
				maxlength:'비밀번호는 {0}자를 초과할 수 없습니다.',
				regx:'영어와 숫자만 사용가능합니다.'
			},
			
			memberRepeatPw:{
				required: '비밀번호는 필수항목입니다.',
				equalTo : '비밀번호와 일치 하지 않습니다'
			},
			
			memberName:{
				required : '이름을 입력하세요',
				minlength : '너무 짧습니다',
				maxlength : '글자수 제한을 넘었습니다',
			},
			
			memberAge:{
				required : '전화번호를 입력하세요',
				minlength : '길이가 짧습니다. 정확하게 입력했는지 확인하세요',
				maxlength : '길이가 깁니다. 정확하게 입력했는지 확인하세요',
				regx: '0으로 시작하는 숫자만 입력하세요'
			},
			
			memberAddr:{
				required : '두번째 전화번호를 입력하세요',
				minlength : '길이가 짧습니다. 정확하게 입력했는지 확인하세요',
				maxlength : '길이가 깁니다. 정확하게 입력했는지 확인하세요',
				regx: '0으로 시작하는 숫자만 입력하세요'
			},
			
			memberTel:{
				required : '이메일을 입력하세요',
				maxlength : '글자수가 초과 되었습니다',
				regx: '이메일 형식이 아닙니다'
			},
			
			memberTel2:{
				required : '태어난 해를 입력하세요',
				regx: '숫자를 입력하세요'
			},
			
			memberEmail:{
				required : '태어난 해를 입력하세요',
				regx: '숫자를 입력하세요'
			},
		},
        //유효성검사 실패시 메시지 출력방식을 설정
		errorPlacement: function(error, element){
			error.insertAfter(element);
		},
		//유효성검사 완료시 실행
		submitHandler: function(form) {
			form.submit();
          // $( "#dialog-confirm" ).dialog( "open" );
		}
	});
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);