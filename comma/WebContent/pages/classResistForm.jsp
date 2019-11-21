<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/cssconfig.css">
<title>Insert title here</title>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<div align="left" style="width: 1200px">
			<div align="center" style="margin-top: 50px">
				<h2 align="center">클래스 등록/수정</h2>
				<div align="center"
					style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 15px;"></div>
			</div>


			<form action="">
				<div align="center" style="margin-top: 50px;">
					<div id="inputinput">
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업이름</span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업이름을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">카테고리</span>
							</div>

							<select class="form-control" id="sel1" name="sellist1">
								<option>카테고리를 설정해주세요</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
						<br>
						<br>
						<br>
						<br>
						<br>
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text"> 사진  </span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업과 관련된 사진을 올려주세요">
								
								<input type="button" value="파일 업로드">
						</div>
						
						<div>
							<table border="1">
								<tr>
									<th width="300">
										파일
									</th>
									
									<th>
										삭제
									</th>
								</tr>
								
								<tr>
									<td>
										image.jpg
									</td>
									
									<td>
										<input type="button" value="삭제">
									</td>
								</tr>
							</table>
						</div>

<br>
<br>


						<div class="form-group">
  							<label for="comment">수업내용을 입력해주세요</label>
  							<textarea class="form-control" rows="5" id="comment"></textarea>
						</div>

<br>
<br>
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업가격</span>
							</div>
							
							<input type="text" class="form-control"
								placeholder="수업가격을 입력해 주세요">
						</div>
<br>
<br>
			<div style="width: 500px;">
				<div class="input-group-prepend" style="display: inline-block; float:left;">
					<span class="input-group-text">위치</span>
				</div>

				<div style="display: inline-block; float:left; width:100px;">
					<select name="province" class="custom-select">
						<option selected>도</option>
						<option value="spec">특별시</option>
						<option value="geonggi">경기도</option>
						<option value="geongsangbuk">경상북도</option>
						<option value="geongsangnam">경상남도</option>
						<option value="chungcheongbuk">충청북도</option>
						<option value="chungcheongnam">충청남도</option>
						<option value="jeonlabuk">전라북도</option>
						<option value="jeonlanam">전라남도</option>
						<option value="jeju">제주도</option>
						

					</select>
				</div>
				
				<div style="display: inline-block; float:left; width:100px;">
					<select name="city" class="custom-select">
						<option selected>시</option>
						<option value="seoul">서울시</option>
						
					</select>
				</div>
				
				<div style="display: inline-block; float:left; width:100px;">
					<select name="gu" class="custom-select">
						<option selected>구</option>
						<option value="jonglo">종로</option>
						
					</select>
				</div>
			</div>


<br>
<br>
<br>
						<div align="center">
							<div style="display:inline-block">
								<h4 style="font-size:20px; font-weight:550;">정규/</h4>
							</div>
							<div style="display:inline-block">
								<h4 style="font-size:20px; font-weight:550;">원데이</h4>
							</div>
						</div>
						
						<div align="center">
							<div style="display:inline-block;" >
								<input type="checkbox" style="width:30px; height:30px;" name="regular">
							</div>
							<div style="display:inline-block; margin-left:10px;">
								<input type="checkbox" style="width:30px; height:30px;" name="oneday">
							</div>
						</div>
<br>
<br>
				<div align="center" style="width:500px; margin-left:100px;">
			
			<div style="display:inline-block; float:left;">
				<h4 style="font-size:20px; font-weight:550;">수업날짜</h4>
			</div>
			
			
			<div style="display:inline-block; float:left;">
			<select name="year" class="custom-select" style="width: 100px;">
				<option selected>2019</option>
				<option value="2019">2019</option>
				

			</select>
			</div>
			
			<div style="display:inline-block; float:left;">
			 <select name="month" class="custom-select" style="width: 100px;">
				<option selected>1월</option>
				<option value="1월">1월</option>
				<option value="2월">2월</option>
				<option value="3월">3월</option>
				<option value="4월">4월</option>
				<option value="5월">5월</option>
				<option value="6월">6월</option>
				<option value="7월">7월</option>
				<option value="8월">8월</option>
				<option value="9월">9월</option>
				<option value="10월">10월</option>
				<option value="11월">11월</option>
				<option value="12월">12월</option>

			</select> <br> <br>
			</div>
			
			<div style="display:inline-block; float:left;">
			<select name="day" class="custom-select" style="width: 100px;">
				<option selected>1일</option>
				<option value="1일">1일</option>
				

			</select>
			</div>
			
			
			</div>
			<br>
			<br>
			<br>
			<br>
			
			<div style="width:400px;">
				<div style="display:inline-block; float:left; margin-left:40px;">
					<h4 style="font-size:20px; font-weight:550;">수업시간</h4>
				</div>
				
				<div style="display:inline-block; float:left;">
				<select name="time" class="custom-select" style="width: 100px;">
					<option selected>오전</option>
					<option value="1일">오전</option>
					<option value="2일">오후</option>

				</select>
				
				</div>
				
				
				<div style="display:inline-block; float:left;">
					<select name="hour" class="custom-select" style="width: 100px;">
					<option selected>00시</option>
					<option value="1시">01시</option>
					<option value="2시">02시</option>
					<option value="3시">03시</option>
					<option value="4시">04시</option>
					<option value="5시">05시</option>
					<option value="6시">06시</option>
					<option value="7시">07시</option>
					<option value="8시">08시</option>
					<option value="9시">09시</option>
					<option value="10시">10시</option>
					<option value="11시">11시</option>
					<option value="12시">12시</option>
					

				</select>
				
				
				</div>
				<br>
				<br>
				<br>
				<div>
				<div style="display:inline-block; float:left;">
					<h4 style="font-size:20px; font-weight:550;">회차</h4>
				</div>
			
			
				<div style="display:inline-block; float:left;">
					<select name="repeat" class="custom-select" style="width: 100px;">
						<option selected>1회차</option>
						<option value="2019">1회차</option>
				

					</select>
				</div>
				
				<div style="display:inline-block; float:left; margin-left:50px;">
					<h4 style="font-size:20px; font-weight:550;">수업주기</h4>
				</div>
			
			
				<div style="display:inline-block; float:left;">
					<select name="term" class="custom-select" style="width: 100px;">
						<option selected>1일</option>
						<option value="1">1일</option>
				

					</select>
				</div>
				
				
				
				</div>
<br>
<br>			
			<input type="button" value="추가">
			<br>
			<div align="center">
			
				<table border="1">
				
					<tr>
						<th width="150">
							날짜
						</th>
						
						<th width="150">
							시간
						</th>
						
						<th>
							삭제
						</th>
					</tr>
					
					<tr>
						<td>
							2019-12-12
						</td>
						
						<td>
							오전:9시
						</td>
						
						<td>
							<input type="button" value="삭제">
						</td>
					</tr>
				</table>
			</div>
			
			<br>
			
			<br>
			
			<div style="width:400px;">
				<div style="display:inline-block; float:left; margin-left:50px;">
					<h4 style="font-size:20px; font-weight:550;">진행시간</h4>
				</div>
				
				<div style="display:inline-block; float:left;">
				<select name="period_time" class="custom-select" style="width: 100px;">
					<option selected>01시간</option>
					<option value="1">01시간</option>
					<option value="2">02시간</option>

				</select>
				
				</div>
				
				<br>
				<br>
				<br>
				
				<div style="display:inline-block; float:left; margin-left:50px;">
					<h4 style="font-size:20px; font-weight:550;">최대인원수</h4>
				</div>
				
				<div style="display:inline-block; float:left;">
				<select name="max" class="custom-select" style="width: 100px;">
					<option selected>01명</option>
					<option value="1">01명</option>
					<option value="2">02명</option>

				</select>
				
				</div>
			</div>	
			</div>
			
			
			<br>
			<br>
			<br><br>
						<div style="margin-bottom: 20px;">
							<button type="button" class="btn btn-outline-secondary">클래스
								등록</button>
						</div>



					</div>
				</div>

			</form>
		</div>
	</div>
	</div>
</body>
</html>