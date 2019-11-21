<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/review_s.js" type="text/javascript">
	
</script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/class_review.jsp"></jsp:include>
	<jsp:include page="alert/delete_alert.jsp"></jsp:include>
	<jsp:include page="alert/t_profile.jsp"></jsp:include>
	<jsp:include page="alert/t_req_accept.jsp"></jsp:include>


	<br>
	<div align="center">

		<div align=left style="width: 1200px;">

			<table>

				<tr height="250">
					<td width="300">
						<div align="center" style="width: 300px; height: 220px;">
							<img id="my_prophoto" src="img/test.jpg" width="200" height="200">
						</div>

					</td>


					<td width="700" style="vertical-align: top;">
						<div style="margin-top: 20px; height: 150px;">
							<pre style="margin-top: 10px;">
박하영

phy555@naver.com

				</pre>
						</div>


						<div id="memberButtons"
							style="vertical-align: midle; height: 40px;">
							<input type="button" class="btn btn-outline-secondary"
								id="modify_info" value="정보변경"
								onclick="location.href='changeInfo_s.do'"> <input
								type="button" class="btn btn-outline-secondary" id="modify_info"
								value="실시간톡" onclick="location.href='talk.do'"> <input
								type="button" class="btn btn-outline-secondary" id="modify_info"
								value="스케줄"> <input type="button"
								class="btn btn-outline-secondary" id="modify_info" value="선생님등록"
								onclick="location.href='t_Resist.do'"> <input
								type="button" class="btn btn-outline-secondary" id="modify_info"
								value="탈퇴">

						</div>
					</td>
				</tr>

			</table>


			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul id="myt_nav" class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav1" style="color: grey;">관심 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
							<a href="#s_nav2" style="color: grey;">결제 완료</a></h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
							<a href="#s_nav3" style="color: grey;">환불된 클래스</a></h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
							<a href="#s_nav4" style="color: grey;">완료된 클래스</a></h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
							<a href="#s_nav5" style="color: grey;">나의 리뷰</a></h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
							<a href="#s_nav6" style="color: grey;">요청 클래스</a></h4>
						</li>

					</ul>
				</div>
			</nav>


			<br>
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav1">관심 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div></div>

			</div>

			<br>

			<!-- 결제 완료된 클래스 -->

			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav2">결제
				완료된 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 550px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>


						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>

					<div style="width: 300px;" align="center">
						<input type="button" style="width: 100px;" value="환불 하기"
							class="btn btn-outline-secondary"
							onclick="location.href='refund.do'">
					</div>
				</div>

				<div></div>

			</div>

			<br>
			<!-- 환불 완료된 클래스 -->
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav3">환불
				완료된 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div></div>

			</div>

			<br>
			<!-- 완료된클래스 -->


			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav4">완료된
				클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>

						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_show()">
						</div>

					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_show()">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>

						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_show()">
						</div>

					</div>
				</div>

				<div></div>

			</div>

			<br>

			<!-- 나의 리뷰 -->

			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav5">나의
				리뷰</h3>

			<br>


			<div align="left"
				style="width: 1200px; height: 150px; border-bottom: 1px solid black;">
				<div id="my_rev" align="left"
					style="border: 1px solid black; height: 100px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<h5 style="font-size: 15px;">[원데이]베이커리/케익 너만을 위한 케익 만들기</h5>
					<h5 style="font-size: 15px;">너무재미있었어요, 강사님도 너무 좋았고
						재미있었습니다!!!^^</h5>

					<div style="display: inline:block; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: right;" align="right">
						<input type="button" value="삭제" class="btn btn-outline-secondary"
							style="margin-right: 30px;"
							onclick="del_conf('my_rev_del','${number}')">
					</div>
				</div>

				<div id="my_rev" align="left"
					style="border: 1px solid black; height: 100px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<h5 style="font-size: 15px;">[원데이]베이커리/케익 너만을 위한 케익 만들기</h5>
					<h5 style="font-size: 15px;">너무재미있었어요, 강사님도 너무 좋았고
						재미있었습니다!!!^^</h5>

					<div style="display: inline:block; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: right;" align="right">
						<input type="button" value="삭제" class="btn btn-outline-secondary"
							style="margin-right: 30px;"
							onclick="del_conf('my_rev_del','${number}')">
					</div>
				</div>
			</div>

			<!-- 나의 리뷰2 -->
			<br>
			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>





			</div>

			<br>

			<!-- 요청한 클래스 -->

			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="s_nav6">요청한
				클래스</h3>



			<div align="left"
				style="width: 1200px; height: 400px; border-bottom: 1px solid black;">
				<div id="my_req" align="left"
					style="border: 1px solid black; height: 400px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<div style="margin-top: 10px; margin-left: 10px;">
						<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
						<h5 style="font-size: 15px;">[요청사항]블루베리 다쿠아즈를 만들고 싶어요 ㅠ</h5>
					</div>

					<div
						style="display: inline:block; margin-top: 5px; margin-left: 10px; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: left; margin-left: 20px;">
						<input type="button" style="width: 120px;" value="삭제"
							onclick="del_conf('my_req_del',1)">
					</div>

					<br>
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open(${id})"> <input type="button"
								value="선생님 수락" onclick="t_accept_open(${id})"
								style="width: 120px; margin-left: 12px;">

						</div>


						<br>

					</div>
					<br>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open(${id})"> <input type="button"
								value="선생님 수락" onclick="t_accept_open(${id})"
								style="width: 120px; margin-left: 12px;">

						</div>


						<br>

					</div>
				</div>

				<div id="my_req" align="left"
					style="border: 1px solid black; height: 400px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<div style="margin-top: 10px; margin-left: 10px;">
						<h5 style="font-size: 15px;">[원데이]/[요리]</h5>
						<h5 style="font-size: 15px;">[요청사항]블루베리 다쿠아즈를 만들고 싶어요 ㅠ</h5>
					</div>

					<div
						style="display: inline:block; margin-top: 5px; margin-left: 10px; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: left; margin-left: 20px;">
						<input type="button" style="width: 120px;" value="삭제"
							onclick="del_conf('my_req_del','${number}')">
					</div>

					<br>
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open(${id})"> <input type="button"
								value="선생님 수락" onclick="t_accept_open(${id})"
								style="width: 120px; margin-left: 12px;">

						</div>


						<br>

					</div>
					<br>

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="img/test.jpg"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">김지민</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open(${id})"> <input type="button"
								value="선생님 수락" style="width: 120px; margin-left: 12px;"
								onclick="t_accept_open(${id})">

						</div>


						<br>

					</div>
				</div>
			</div>
		</div>

	</div>



</body>
</html>