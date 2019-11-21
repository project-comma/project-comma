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
	<jsp:include page="alert/question_write.jsp"></jsp:include>
	<jsp:include page="alert/notice_view.jsp"></jsp:include>
	<jsp:include page="alert/question_view.jsp"></jsp:include>


	<br>
	<div align="center">

		<div id="custom_title" align="center" style="width: 1200px;">
			<h2 style="font-weight: 900; font-size: 25px;">고객 센터</h2>
		</div>

		<br> <br>
		<div id="notice_board" align="left" style="width: 1100px;">
			<h2 style="font-weight: 800; font-size: 22px;">공지사항</h2>
			<table>
				<tr align="center">
					<th width="1200">작성자</th>
					<th width="1200">제목</th>
					<th width="1200">작성일</th>
				</tr>

				<tr>
					<td colspan="3" bgcolor="gray">
				</tr>

				<tr align="center">
					<td>관리자</td>

					<td>
						<div onclick="notice_view_open('number')">신종금융 사기 스미싱 주의 바랍니다.</div><!-- 글번호 넘겨야 한다 -->
					</td>

					<td>2019-10-29</td>
				</tr>

				<tr>
					<td colspan="3">
						<ul class="pagination pagination-sm justify-content-center"
							style="margin: 20px 0">
							<li class="page-item"><a class="page-link" href="#"><</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">></a></li>
						</ul>
					</td>

				</tr>

				<tr>
					<td colspan="3" bgcolor="gray"></td>
				</tr>
			</table>
		</div>

		<div id="qa_board" align="left" style="width: 1100px;">
			<h2 style="font-weight: 800; font-size: 22px;">질문게시판</h2>

			<table>
				<tr align="center">
					<th width="1200">작성자</th>
					<th width="1200">제목</th>
					<th width="1200">댓글</th>
					<th width="1200">작성일</th>
				</tr>

				<tr>
					<td colspan="4" bgcolor="gray">
				</tr>

				<tr align="center">
					<td>박홍*</td>

					<td><div onclick="question_view_open('number')">클래스 날짜 문의 드립니다.</div></td><!--글번호를 가지고 간다 -->

					<td>1</td>

					<td>2019-10-29</td>
				</tr>

				<tr align="right">
					<td colspan="4"><input type="button" class="btn btn-secondary"
						value="질문작성" onclick="question_write_open()"></td>
				<tr>
					<td colspan="4">
						<ul class="pagination pagination-sm justify-content-center"
							style="margin: 20px 0">
							<li class="page-item"><a class="page-link" href="#"><</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">></a></li>
						</ul>
					</td>

				</tr>

				<tr>
					<td colspan="4" bgcolor="gray"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>