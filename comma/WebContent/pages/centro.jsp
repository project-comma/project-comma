<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>







<body>
<!-- <input id="centroBtn" type="button" value="공지사항"> -->
<!-- <input id="qaBtn" type="button" value="질문게시판" > -->
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/question_write.jsp"></jsp:include>
	<jsp:include page="alert/notice_view.jsp"></jsp:include>
	<jsp:include page="alert/question_view.jsp"></jsp:include>
	
	<script type="text/javascript">



$(document).ready(function() {



		function noticeList() {
			$.ajax({
				type: "get",
				url: "noticeList.do",
				dataType: "json",
				success: function (arr) {
					
					
					for (var i = 0; i < arr.length; i++) {
						var tr = $("<tr align='center'>")
						var td1 = $("<td>")
						td1.text(arr[i].id)
						var td2 = $("<td>")
						td2.text(arr[i].title)
						var td3 = $("<td>")
						td3.text(arr[i].date)
						tr.append(td1).append(td2).append(td3)
						$('#notice_boardList').append(tr);
					}
				}, error: function () {
					console.log(xhrReq + ' / ' + status + ' / ' + error);
				}
			})
		}
		
		
		
	
	
	function questionList() {
		
		$.ajax({
			type: "get",
			url: "questionList.do",
			dataType: "json",
			success: function (arr) {
				
				for (var i = 0; i < arr.length; i++) {
					var tr = $("<tr align='center'>")
					var td1 = $("<td>")
					td1.text(arr[i].id)
					var td2 = $("<td>")
					td2.text(arr[i].title)
					var td3 = $("<td>")
					td3.text(arr[i].date)
					tr.append(td1).append(td2).append(td3)
					$('#qa_boardList').append(tr);
				}
			}, error: function () {
				console.log(xhrReq + ' / ' + status + ' / ' + error);
			}
		})
		
	}
	noticeList();
	questionList();
		
		
		
	


})
	



</script>


	<br>
	<div align="center">

		<div id="custom_title" align="center" style="width: 1200px;">
			<h2 style="font-weight: 900; font-size: 25px;">고객 센터</h2>
		</div>

		<br> <br>
		<div id="notice_board" align="left" style="width: 1100px;">
			<h2 style="font-weight: 800; font-size: 22px;">공지사항</h2>
			<table id="notice_boardList">
				<tr align="center">
					<th width="1200">작성자</th>
					<th width="1200">제목</th>
					<th width="1200">작성일</th>
				</tr>

				<tr>
					<td colspan="3" bgcolor="gray">
				</tr>

<!-- 				<tr align="center"> -->
<!-- 					<td>관리자</td> -->

<!-- 					<td> -->
<!-- 						<div onclick="notice_view_open('number')">신종금융 사기 스미싱 주의 바랍니다.</div>글번호 넘겨야 한다 -->
<!-- 					</td> -->

<!-- 					<td>2019-10-29</td> -->
<!-- 				</tr> -->
			</table>
			
			<tr>
			
			<td colspan="6" align="center">
			<c:if test="${start != 1 }">
					<a href="centro.do?page=1">[처음]</a>
					<a href="centro.do?page=${start-1 }">[이전]</a>
						
						
				</c:if>
				 <c:forEach begin="${start }" end="${end }" var="i">
					<c:choose>
						<c:when test="${i == current }">
						[${i }]
						</c:when>

						<c:when test="${i <= last }">
						<a href="centro.do?page=${i }">[${i }]</a>
						</c:when>
						
						
						
						
					</c:choose>

				</c:forEach> <c:if test="${end < last }">
					<a href="centro.do?page=${end+1 }">[다음]</a>
					<a href="centro.do?page=${last}">[마지막]</a>
				</c:if>
				</td>
			</tr>

<!-- 				<tr> -->
<!-- 					<td colspan="3"> -->
<!-- 						<ul class="pagination pagination-sm justify-content-center" -->
<!-- 							style="margin: 20px 0"> -->
<!-- 							<li class="page-item"><a class="page-link" href="#"><</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!-- 							<li class="page-item active"><a class="page-link" href="#">2</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">></a></li> -->
<!-- 						</ul> -->
<!-- 					</td> -->

<!-- 				</tr> -->

<!-- 				<tr> -->
<!-- 					<td colspan="3" bgcolor="gray"></td> -->
<!-- 				</tr> -->
		</div>

		<div id="qa_board" align="left" style="width: 1100px;">
			<h2 style="font-weight: 800; font-size: 22px;">질문게시판</h2>

			<table id="qa_boardList">
				<tr align="center">
					<th width="1200">작성자</th>
					<th width="1200">제목</th>
					<th width="1200">작성일</th>
				</tr>

				<tr>
					<td colspan="4" bgcolor="gray">
				</tr>

<!-- 				<tr align="center"> -->
<!-- 					<td>박홍*</td> -->

<!-- 					<td><div onclick="question_view_open('number')">클래스 날짜 문의 드립니다.</div></td>글번호를 가지고 간다 -->

<!-- 					<td>1</td> -->

<!-- 					<td>2019-10-29</td> -->
<!-- 				</tr> -->
			</table>
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
			
		</div>
	</div>
</body>
</html>