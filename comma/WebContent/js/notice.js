/**
 * 공지사항 관련된 기능
 */
function notice_write_open() {
	$("#notice_write").show();
	$(".dim").show();
	
}
function notice_write_close() {
	
	$("#notice_write").hide();
	$(".dim").hide();
	
}function notice_write_ajax(id) {
	console.log("notice_write_ajax")
	
	var title = $("#n_title").val();
	var content = $("#n_content").val();
	$.ajax({
		type : "post",
		dataType : "json",	
/*		contentType : "application/json",*/
		url : "notice_write.do",
		data : {
			title : title,
			content : content,
			id : id
		},
		success : function(data) {
			alert("작성되었습니다.")
			notice_write_close();
		},
		error : function() {
			alert("작성에 실패했습니다.")
		}

	});
}

function notice_view_open(number) {
	$("#notice_view").show();
	$(".dim").show();
	
}
function notice_view_close() {
	$("#notice_view").hide();
	$(".dim").hide();
	
}