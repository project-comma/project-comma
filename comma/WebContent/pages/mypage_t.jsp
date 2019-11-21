<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.mypageT_resisclass_btn {
	margin-left: 10px;
	width: 80px;
	height: 25px;
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/delete_alert.jsp"></jsp:include>
	<jsp:include page="alert/req_delete.jsp"></jsp:include>
	<jsp:include page="alert/dropMember.jsp"></jsp:include>
	
	

	<br>
	<div align="center">

		<div align=left style="width: 1200px;">

			<table>


				<tr height="250">
					<td width="300">
						<div align="center" style="width: 300px; height: 250px;">
							<img id="my_prophoto" src="img/test.jpg" width="200" height="200">
						</div>

					</td>


					<td width="500" style="vertical-align: top;">
						<div style="vertical-align: midle; height: 180px;">
							<pre style="margin-top: 10px;">

박하영(Teacher)

phy555@naver.com

010-3265-4589
				</pre>
						</div>


						<div id="memberButtons"
							style="vertical-align: midle; height: 40px;">
							<input type="button" class="btn btn-light" id="modify_info"
								value="정보변경" onclick="location.href='changeInfo_tForm.do'">
							<input type="button" class="btn btn-light" id="modify_info"
								value="실시간톡" onclick="location.href='talk.do'"> <input
								type="button" class="btn btn-light" id="modify_info" value="탈퇴" onclick="drop_member_open(${id})">

						</div>
					</td>
				</tr>

			</table>


			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul id="myt_nav" class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">등록된
								클래스</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">수업
								완료된 클래스</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">클래스별
								리뷰</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">요청
								클래스</h4>
						</li>

					</ul>
				</div>
			</nav>

			<br>
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;">등록된클래스</h3>
			<br>
			<div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위한 마카롱 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br>
				</div>
				<div class=inlineArr>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
					
						onclick="location.href='classModify.do'"><h6 style="font-size: 13px;">내용수정</h6></button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
					
						onclick="del_conf('t_class_del','${c_name}')"><h6 style="font-size: 13px;">수업삭제</h6></button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
					 onclick="location.href='enroll.do'"><h6 style="font-size: 13px;">학생목록</h6>
						</button>
				</div>
			</div>
			<br> <br>


			<div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위 한 다쿠아즈 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br>
				</div>
				<div class="inlineArr">
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'"><h6 style="font-size: 13px;">내용수정</h6></button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="del_conf('t_class_del','${c_name}')"><h6 style="font-size: 13px;">수업삭제</h6></button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'"><h6 style="font-size: 13px;">학생목록</h6></button>
				</div>
			</div>





			<br> <br>
			<div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위한 케익 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br>
				</div>
				<div class="inlineArr">
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'">
						<h6 style="font-size: 13px;">내용수정</h6>
					</button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
					
						onclick="del_conf('t_class_del','${c_name}')"><h6 style="font-size: 13px;">수업삭제</h6></button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'"><h6 style="font-size: 13px;">학생현황</h6></button>
				</div>

			</div>

			<br> <br>
			<div align="left">
				<div class=inlineArr>

					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위한 쿠키 만들기 (2019-10-22 개설/ 원데이/ 30,000원)

				</div>
				<div class="inlineArr">
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
				
						onclick="location.href='classModify.do'"><h6 style="font-size: 13px;">내용수정</h6></button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
					
						onclick="del_conf('t_class_del','${c_name}')"><h6 style="font-size: 13px;">수업삭제</h6></button>
					<button type="submit" class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'"><h6 style="font-size: 13px;">학생현황</h6></button>
				</div>

			</div>



			<br> <br>

			<div align="right"></div>
			<br>
			<div align="center">
				<table id="myT_table" border="1">
					<tr>
						<!-- tr1 -->
						<th>
							<!-- td1 --> 일
						</th>

						<th>
							<!-- td2 --> 월
						</th>

						<th>
							<!-- td3 --> 화
						</th>

						<th>
							<!-- td4 --> 수
						</th>

						<th>
							<!-- td5 --> 목
						</th>

						<th>
							<!-- td6 --> 금
						</th>

						<th>
							<!-- td7 --> 토
						</th>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>


					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>
				</table>

			</div>
			<br> <br>
			<div align="center">
				<div align="left"
					style="border-top: 1px solid black; border-bottom: 1px solid black; width: 1000px;">

					<h4 style="margin-top: 20px; font-size: 25px; font-weight: 700;">수업
						완료된 클래스</h4>

					<br>


					<div style="height: 130px; width: 300px;">


						<div id="myT_student"
							style="width: 300px; height: 130px; display: inline-float; float: left;">
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 마카롱 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 다쿠아즈 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 쿠키 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 케익 클래스</h6>
							</div>


						</div>


					</div>


				</div>

				<br>
				<div align="left" id="myT_review"
					style="border-bottom: 1px solid black; width: 1000px;">
					<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;">클래스
						별 리뷰</h3>

					<br> <input type="checkbox"> 너만을 위한 마카롱 만들기
					(2019-10-22 개설/ 원데이/ 30,000원)<br> <input type="checkbox">
					너만을 위한 마카롱 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br> <input
						type="checkbox"> 너만을 위한 마카롱 만들기 (2019-10-22 개설/ 원데이/
					30,000원)<br> <input type="checkbox"> 너만을 위한 마카롱 만들기
					(2019-10-22 개설/ 원데이/ 30,000원)<br> <br>

					<table id="myT_reviewTable">
						<tr>
							<td align="center">
								<div align="left"
									style="border: 1px solid black; height: 100px; width: 400px;">
									<h5>[너만을 위한 마카롱 만들기]</h5>
									<h5>너무재미있었어요, 강사님도 너무 좋았고 재미있었습니다!!!</h5>
									<h5>등록 : 2019-10-22</h5>
								</div>
							</td>

							<td align="center">
								<div align="left"
									style="border: 1px solid black; height: 100px; width: 400px;">
									<h5>[너만을 위한 마카롱 만들기]</h5>
									<h5>너무재미있었어요, 강사님도 너무 좋았고 재미있었습니다!!!^^</h5>
									<h5>등록 : 2019-10-22</h5>
								</div>
							</td>
						</tr>
					</table>
				</div>

				<div align="left" style="width: 1000px;">
					<br>
					<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;">요청클래스</h3>
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px;">
						<h4 style="font-weight: 600; font-size: 17px;">검토중</h4>
					</div>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center"
							style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
								<h5 style="font-size: 15px;">[요청사항] 블루베리 다쿠아즈를 만들고 싶어요ㅠ</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span> <span> 서울시 종로구 </span> <span style="float: right;"> <input
									type="button" value="신청철회" onclick="class_req_retract_open()">
								</span>
							</div>
						</div>
						<br>
					</div>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center"
							style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
								<h5 style="font-size: 15px;">[요청사항] 블루베리 다쿠아즈를 만들고 싶어요ㅠ</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span> <span> 서울시 종로구 </span> <span style="float: right;"> <input
									type="button" value="신청철회" onclick="class_req_retract_open()">
								</span>
							</div>
						</div>
						<br>



					</div>

					<br>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px;">
						<h4 style="font-weight: 600; font-size: 17px;">수락완료</h4>
					</div>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center"
							style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
								<h5 style="font-size: 15px;">[요청사항] 블루베리 다쿠아즈를 만들고 싶어요ㅠ</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span> <span> 서울시 종로구 </span>
							
							</div>
						</div>
						<br>



					</div>
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center"
							style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
								<h5 style="font-size: 15px;">[요청사항] 블루베리 다쿠아즈를 만들고 싶어요ㅠ</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span> <span> 서울시 종로구 </span> 
							</div>
						</div>
						<br>



					</div>

				</div>
			</div>
			<br>





		</div>
	</div>
</body>
</html>