/**
 * 선생님 경고창
 */

function t_profile_open(id) {// 선생님 프로필 창 열기
	$('#t_profile').show();
	$(".dim").show();

}
function t_profile_close() {// 선생님 프로필 창 닫기
	$("#t_profile").hide();
	$(".dim").hide();
}
function t_accept_open(id) {// 선생님 수락창 열기
	$("#t_req_accept").show();
	$(".dim").show();
}
function t_accept_close() {// 선생님 수락 창 닫기
	$("#t_req_accept").hide();
	$(".dim").hide();
}
function t_accept_ajax(id) {// 선생님 수락 ajax

	$.ajax({
		url : "acceptT.do",
		type : "post",
		contentType : "application/json",
		data : {
			id : id
		},
		dataType : "json",
		success : function(data) {
//			console.log(data);
		},
		error : function() {
			console.log("error");
		
		}

	});
}

function declaration_s_open(id) {// 학생 신고 창 열기 학생 이름을매게변수로 받는다
	$("#s_warning").show();
	$(".dim").show();
}
function declaration_s_close() {// 학생 신고 창 닫기
	$("#s_warning").hide();
	$(".dim").hide();
}
function declaration_ajax(id) {// 학생신고 ajax 학샐이름을 매게 변수로 받는다

}


function modeChange(me){
	var ch = $("input[id=tSwitch]").prop("checked");
	
	var mode = 0;
	if(ch){
		mode = 2;//선생님모드
	}else{
		mode = 1;//학생모드
	}
	
	
	$.ajax({
		url:"modeChange.do",
		type:"POST",
		data:{
			mode:mode
		},
		datatype:"json",
		success:function(){
			
		},
		error:function(){
			aler("에러!!")
		}
	});
}


function modeSwitch(mode){
	
	
	
	
	
	if(mode=='tc'){
		$("#tSwitch").prop("checked", true);
	}else{
		$("#tSwitch").prop("checked", false);
	}
}