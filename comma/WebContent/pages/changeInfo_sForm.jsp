<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${id }
	<jsp:include page="header.jsp"></jsp:include>
 <h2 align="center">학생 정보 변경</h2><br>


	<form action="changeInfo_s.do">
		<div align="center">
			<div align="left" style="width: 1200px">
				<div align="center" style="margin-top: 50px">

					<div align="center" style="width: 200px; float: left;">
						<img src="img/위치.png" style="width: 200px; height: 200px;">

					</div>

					<div align="center" style="width: 700px; margin-left: 30px; float: left;">

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">사진</span>
							</div>
							<input type="text" class="form-control" placeholder="프로필 사진을 선택해 주세요">
						</div>


						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">이메일</span>
							</div>
							<input type="text" class="form-control" name="email" placeholder="이메일을 입력해 주세요">
						</div>
						
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">핸드폰</span>
							</div>
							<input type="text" class="form-control" name="p_number" placeholder="핸드폰 번호를 입력해 주세요">
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


					</div>

					

					<div align="left" style="width: 200px; height: 319.88px; float: left; margin-left: 30px;">


						<div>
							<button type="button" class="btn btn-outline-secondary">파일 업로드</button>
						</div>

					</div>

					<div style="margin-top: 50px;">
						<button type="submit" class="btn btn-outline-secondary">변경 하기</button>
					</div>


					
					<input type="hidden" name="id" value="${sessionScope.id }">
					


				</div>
			</div>
		</div>

		


	</form>


</body>
</html>