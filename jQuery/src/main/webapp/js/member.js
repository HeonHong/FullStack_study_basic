$(function(){
	$('#join').submit(function(){
		var user_id= $('input[name="user_id"]').val();
		if(!user_id){
			alert("아이디를 입력하세요.");
			$('input[name=user_id]').focus();
			return false;
		}
		
		var user_pw= $('input[name="user_pw"]').val();
		 if(!user_pw){
			alert("비밀번호를 입력하세요.");
			$('input[name=user_pw]').focus();
			return false;
		}
		
		var juminno= $('input[name="juminno"]').val();
		 if(!juminno){
			alert("주민번호를 입력하세요.");
			$('input[name=jumin]').focus();
			return false;
		}
		
		if(!$('input[name="gender"]').is(':checked')){
			alert("성별을 선택하세요.");
			//js식 문법
			//document.form1.gender[0].checked=true;
			$('input[name="gender"]:eq(0)').attr('checked',true);
			//$('input[name="gender"]:eq(1)').prop('checked',true);
			return false;
		}
		
		var email= $('input[name="email"]').val();
		 if(!email){
			alert("이메일을 입력하세요.");
			$('input[name=email]').focus();
			return false;
		}

		
		var url= $('input[name="url"]').val();
		 if(!url){
			alert("url을 입력하세요.");
			$('input[name=url]').focus();
			return false;
		}
		
		var hpno= $('input[name="hpno"]').val();
		 if(!hpno){
			alert("번호를 입력하세요.");
			$('input[name=hpno]').focus();
			return false;
		}
		
		if(!$('input[name="hobby"]').is(checked)){
			alert("취미를 입력하세요.");
			$('input[name="hobby"]:eq(0)').attr('checked',true);
			return false;
		}
		
		if($('select[name="job"] > option:selected').index() < 1){
			alert("직업을 입력하세요.");
			$('select[name="job"] > option:eq(1)').attr('selected',true);
			return false;
		}
		
		//입력한 내용을 화면 출력
		var gender = $('input[name="gender"]:checked').val();
		var hobby = $('input[name="hobby"]:checked');
		var hobby_val="";
		hobby.each(function(){
			hobby_value += $(this).val()+"";//$(this) > 반복문에서 hobby안에 포함된 객체
			$('input[name="hobby"]:checked')
			});
		
		var job = $('select[name="job"] > option:selected').val();
		
		var result='<ul>';
		result += '<li>' +user_id+ '</li>';
		result += '<li>' +user_pw+ '</li>';
		result += '<li>' +juminno+ '</li>';
		result += '<li>' +gender+ '</li>';
		result += '<li>' +email+ '</li>';
		result += '<li>' +url+ '</li>';
		result += '<li>' +hpno+ '</li>';
		result += '<li>' +hobby_val+ '</li>';
		result += '<li>' +job+ '</li>';
		result += '</ul>'
		
		$('body').html(result);
		
		return false;
		
	});
});