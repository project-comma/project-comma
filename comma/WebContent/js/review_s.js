/**
 * 댓글 ajax 기능
 */

function class_review_show() {// 댓글 남기는 기능

	$('#class_review').show();
	$(".dim").show();
}
function class_review_close() {// 댓글 남기는 기능 창 없애기

	$('#class_review').hide();
	$(".dim").hide();
}
function review_write_btn(content) {

	$.ajax({
		url : "reviewWrite.do",
		type : 'post',
		data : {
			content:content
		}, 
		dataType : "json",
		success : function() {
	
		},
		error : function(xhr, status, error) {
		
			
		}
	});


}
