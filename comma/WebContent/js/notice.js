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
	
}function notice_write_ajax(content) {
	console.log("notice_write_ajax")
	$.ajax({
		type : "post",
		dataType : "json",	
/*		contentType : "application/json",*/
		url : "notice_write.do",
		data : {
			content : content
		},
		sucess : function(data) {
			console.log("success");
			console.log(data);
			
		},
		error : function() {
			console.log("error");
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