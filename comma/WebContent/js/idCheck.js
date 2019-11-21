/**
 * 
 */


function(){

		var log = false;
		$('#joinid').blur(function() {
			$.ajax({
				type : 'post',
				url : 'idCheck.do',
				data : 'id=' + $('#joinid').val(), // 보낼 데이터
				dataType : 'json', // 받아오는 데이터 타입
				success : function(resultStr) {
					// console.log(resultStr.result);

					if (resultStr.result) {

						log = false;
						$('#idok').html('중복');
					} else {
						log = true;

						$('#idok').html('사용가능');
					}
				},
				error : function(xhrReq, status, error) {
					console.log(xhrReq + ' / ' + status + ' / ' + error);
					// alert("에러");
				}

			})
		})

		$('#joinBtn').click(function() {

			var params = $('#inForm').serialize();
			if (log) {

				$.ajax({
					type : "post",
					url : "join.do",
					data : params,
					dataType : "json",
					success : function(resultStr) {
						
						if (resultStr.result) {
							log = false;

							alert("가입성공!");
							join_form_close();
						} else
							alert("안놉");

					},
					error : function(xhrReq, status, error) {
						console.log(xhrReq + ' / ' + status + ' / ' + error);
					}
				})

			} else
				alert("밖놉")

		})

	}
