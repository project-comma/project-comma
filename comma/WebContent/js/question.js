/**
 * 고객센터
 * 공지사항,질문게시판
 * 
 */
function question_write_open() {//질문 작성 창 열기
	$("#question_write").show();
	$(".dim").show();
}
function question_write_close() {//질문 작성 창 닫기
	$("#question_write").hide();
	$(".dim").hide();
}
function question_view_open(number) {//질문 보기 창 열기
	$("#question_view").show();
	$(".dim").show();
}
function question_view_close() {//질문 보기 창 닫기
	$("#question_view").hide();
	$(".dim").hide();
}