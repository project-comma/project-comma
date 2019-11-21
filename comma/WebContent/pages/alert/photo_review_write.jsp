<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div align="center" class="popup_wide" id="pReview_write">
		<!--닫기창  -->
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="pReview_write_close()">
		</div>
		<!-- 제목창 -->
		<div style="margin-top: 30px;">
			<h1>사진 리뷰 작성</h1>
		</div>
		<div align="center" style="height:130px;">
			<hr width="600px;">
			<div style="margin-left: 50px; margin-top: 40px;">
				<div style="display: inline-block; float: left">
					<input type="text"
						style="border-radius: 3px; width: 300px; height: 40px" placeholder="이미지 업로드....">
				</div>
				<div style="display: inline-block; float: left">
					<button type="submit" class="btn btn-outline-secondary">
						이미지 찾기..</button>
				</div>

			</div>

		</div>

				<div class="form-group" >
					<textarea class="form-control" rows="5" style="width: 600px; height: 200px;" placeholder="  내용을 입력 해주세요."></textarea>
				</div>
				<div>
				<button type="submit" class="btn btn-outline-secondary">
						리뷰 작성</button>
				
				</div>





















	</div>




</body>
</html>