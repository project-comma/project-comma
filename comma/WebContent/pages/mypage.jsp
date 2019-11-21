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
	<br>
	<div align="center">

		<div align=left style="width: 1200px;">

			<table>

				<tr height="250">
					<td width="300">
						<div align="center" style="width: 300px; height: 250px;">
							<img id="my_prophoto" src="img/test.jpg" width="200"
								height="200">
						</div>

					</td>


					<td width="600" style="vertical-align: top;">
						<div style="vertical-align: midle; height: 180px;">
							<pre style="margin-top: 10px;">
박하영(Teacher)

phy555@naver.com

010-3265-4589
				</pre>
						</div>


						<div id="memberButtons"
							style="vertical-align: midle; height: 40px;">
							<input type="button" class="btn btn-outline-secondary"
								id="modify_info" value="정보변경"> <input type="button"
								class="btn btn-outline-secondary" id="modify_info" value="실시간톡">
							<input type="button" class="btn btn-outline-secondary"
								id="modify_info" value="탈퇴"> <input type="button"
								class="btn btn-outline-secondary" id="modify_info" value="선생님등록">

						</div>
					</td>
				</tr>

			</table>
			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul id="myt_nav" class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">관심
								클래스</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">결제
								완료</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">환불된
								클래스</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">완료된
								클래스</h4>
						</li>
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">나의리뷰</h4>
						</li>

					</ul>
				</div>
			</nav>

		</div>
	</div>
</body>
</html>