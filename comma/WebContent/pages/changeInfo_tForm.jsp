<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
 <h2 align="center">선생님 정보 변경</h2><br>


	<form action="changeInfo_t.do" enctype="multipart/form-data">
		<div align="center">
			<div align="left" style="width: 1200px">
				<div align="center" style="margin-top: 50px">

					<div align="center" style="width: 200px; float: left;">
						<img src="img/위치.png" style="width: 200px; height: 200px;">

					</div>

					<div align="left" style="width: 700px; margin-left: 30px; float: left;">

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">사진</span>
							</div>
							<input type="text" class="form-control" name="picture" placeholder="프로필 사진을 선택해 주세요">
						</div>


						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">이메일</span>
							</div>
							<input type="text" class="form-control" name="email" placeholder="이메일을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">비밀번호</span>
							</div>
							<input type="text" class="form-control" name="password" placeholder="비밀번호를 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">비빌번호 확인</span>
							</div>
							<input type="text" class="form-control" name="passwordCheck" placeholder="비밀번호를 다 시 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">핸드폰</span>
							</div>
							<input type="text" class="form-control" name="p_number"
								placeholder="변경 하실 핸드폰 번호를 입력 해주세요 (ex 010-7310-9603)">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">인증번호</span>
							</div>
							<input type="text" class="form-control" placeholder="인증번호를입력 해주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">신분증</span>
							</div>
							<input type="text" class="form-control" placeholder="변경하실 신분증 파일을 제출해주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">학력</span>
							</div>
							<input type="text" class="form-control" placeholder="변경하실 재학 증명서 또는 졸업 증명서를 제출해주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">자격증</span>
							</div>
							<input type="text" class="form-control" placeholder="변경하실 자격증 파일을 제출해주세요">
						</div>

						<div class="form-check">
							<label class="form-check-label" for="check1">
								<input type="checkbox" class="form-check-input" id="check1" name="option1"
									value="something" checked>Option 1
							</label>
						</div>
						<div class="form-check" style="margin-bottom: 30px; ">
							<label class="form-check-label" for="check2">
								<input type="checkbox" class="form-check-input" id="check2" name="option2"
									value="something">Option 2
							</label>
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">소셜미디어</span>
							</div>
							<input type="text" class="form-control" placeholder="사용하고계시는 소셜 미디어의 주소나 아이디를 입력 해주세요">
						</div>




					</div>



					<div align="left" style="width: 200px; height: 717px; float: left; margin-left: 30px;">


						<div>
							<button type="button" class="btn btn-outline-secondary">파일 업로드</button>
						</div>

						<div style="margin-top: 220px;">
							<button type="button" class="btn btn-outline-secondary">인증번호 보내기</button>
						</div>

						<div style="margin-top: 30px;">
							<button type="button" class="btn btn-outline-secondary">인증 하기</button>
						</div>

						<div style="margin-top: 25px;">
							<button type="button" class="btn btn-outline-secondary">파일 업로드</button>
						</div>

						<div style="margin-top: 25px;">
							<button type="button" class="btn btn-outline-secondary">파일 업로드</button>
						</div>

						<div style="margin-top: 25px;">
							<button type="button" class="btn btn-outline-secondary">파일 업로드</button>
						</div>
					</div>


					<div style="margin-top: 50px; margin-bottom: 50px;">
						<button type="button" class="btn btn-outline-secondary">변경 하기</button>
					</div>






				</div>
			</div>
		</div>




	</form>




</body>
</html>