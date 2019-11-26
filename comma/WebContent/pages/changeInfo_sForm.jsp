<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<script type="text/javascript">
	$(document)
			.ready(

					function() {

						var fileTarget = $('.filebox .upload-hidden');

						fileTarget.on('change', function() {
							if (window.FileReader) {
								// 파일명 추출
								var filename = $(this)[0].files[0].name;
							}

							else {
								// Old IE 파일명 추출
								var filename = $(this).val().split('/').pop()
										.split('\\').pop();
							}
							;

							$(this).siblings('.upload-name').val(filename);
						});

						//preview image 
						var imgTarget = $('.preview-image .upload-hidden');

						imgTarget
								.on(
										'change',
										function() {
											var parent = $(this).parent();
											parent.children('.upload-display')
													.remove();

											if (window.FileReader) {
												//image 파일만
												if (!$(this)[0].files[0].type
														.match(/image\//))
													return;

												var reader = new FileReader();
												reader.onload = function(e) {
													var src = e.target.result;
													parent
															.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb rounded-circle" style="width:200px; height:200px;"></div></div>');

												}
												reader
														.readAsDataURL($(this)[0].files[0]);
												//기본 이미지 숨기기
												$("#default_people_img").hide();
											}

											else {
												$(this)[0].select();
												$(this)[0].blur();
												var imgSrc = document.selection
														.createRange().text;
												parent
														.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

												var img = $(this).siblings(
														'.upload-display')
														.find('img');
												img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""
														+ imgSrc + "\")";
											}
										});

					});
</script>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<h2 align="center" style="margin-top: 50px;">학생 정보 변경</h2>
	<br>


	<form action="changeInfo_s.do" enctype="multipart/form-data" method="post">
		<div align="center">
			<div align="left" style="width: 1200px">
				<div align="center" style="margin-top: 50px">
					<div>
						<div class="inlineArr">
							<img src=img/people.jpg style="width: 200px; height: 200px; margin-bottom: 50px;"
								class="rounded-circle" id="default_people_img">
						</div>
						<div class="filebox preview-image inlineArr">
							<input class="upload-name" value="파일선택" disabled="disabled" style="margin-left: 20px;">
							<label for="input-file">업로드</label> <input type="file"
								id="input-file" class="upload-hidden" name="file">
						</div>
					</div>
	
					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<input type="text" class="form-control" name="email"
							placeholder="이메일을 입력해 주세요">
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">핸드폰</span>
						</div>
						<input type="text" class="form-control" name="p_number"
							placeholder="핸드폰 번호를 입력해 주세요">
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">비밀번호</span>
						</div>
						<input type="text" class="form-control" name="password"
							placeholder="비밀번호를 입력해 주세요">
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">비빌번호 확인</span>
						</div>
						<input type="text" class="form-control" name="passwordCheck"
							placeholder="비밀번호를 다 시 입력해 주세요" id="pw">
					</div>


				</div>


				<div style="margin-top: 50px; margin-bottom: 50px;" align="center">
					<button type="submit" class="btn btn-outline-secondary">변경 하기</button>
				</div>

			</div>
		</div>





	</form>


</body>
</html>