/**
 * 확인창 관련 기능
 */
// 마이페이지s-나의리뷰(my_rev_del),마이페이지s-요청한 클래스 (my_req_del)DB 삭제 해야함
function del_conf(keyword, id) {// 삭제 확인

	option = keyword;
	number = id;

	console.log("hi");
	$('#delete_alert').show();

	$(".dim").show();

}

function delete_btn() {
	// 클래스요청삭제
	if (option === ("my_req_del")) {
		$.ajax({
			url : "deleteReq.do",
			type : "post",// 받는 타입 거의 post
			// (****req 에서 뿌려준 넘버 를 키값으로 가져 와야 한다)
			data : {
				number : number
			}, // confirm 에서 controller 로 보내는 데이터
			// ("number="+id)
			dataType : "json",// controller 에서 confirm datatype 에맞게
			success : function(data) {

			},
			error : function(xhr, status, error) {

			}
		});

		// 나의리뷰 삭제
	} else if (option === ("my_rev_del")) {

		$.ajax({
			url : "deleteReview.do",
			type : "post",
			data : {
				number : number
			},
			dataType : "json",
			sucess : function() {

			},
			error : function() {

			}

		});
		// 등록된클래스 삭제
	} else if (option === ("t_class_del")) {

	}
};










function del_conf_close() {// 삭제 확인
	$("#delete_alert").hide();
	$(".dim").hide();
}

function approve_conf() {// 승인 확인

}

function request_cancel_conf() {// 신청 철회 확인창

}