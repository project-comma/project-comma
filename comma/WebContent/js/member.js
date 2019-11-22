/**
 * 회원가입 형식
 */
function open_close_2() {
	join_form_close();
	login_form();
}
function join_form() {// 회원가입창 띄우기

	$("#join_form").show();
	$(".dim").show();

}
function join_form_close() {
	$("#join_form").hide();
	$(".dim").hide();
}

function join_proc(name, email, password, phone) {// 회원가입 진행

}

function google_join() {// 구글 회원가입

}

function drop_member_open(id) {// 탈퇴창띄우기

	$("#drop_member").show();
	$(".dim").show();

}
function drop_member_close() {// 탈퇴창닫기

	$("#drop_member").hide();
	$(".dim").hide();

}
function drop_member_ajax(id) {// 탈퇴ajax

	$.ajax({
		url : "dropMember.do",
		type : "post",
		contentType : "application/json",
		data : {
			id : id
		},
		dataType : "json",
		success : function(data) {


		},
		error : function(request,status,error) {
	console.log(request);
	console.log(status);
	console.log(error);
		}

	});
}
