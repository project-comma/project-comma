<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cssconfig.css">
    <title>Insert title here</title>
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include><br>

    <div align="center">
        <div align="center" style="width: 1200px">
          <br> <br> <br>
			<div class="span" align="center">
				<img src="img/요리.png" id="cook" class="icon"> <br> <a
					href="" class="iconText">요리</a>
			</div>

			<div class="span" align="center">
				<img src="img/수공예.png" id="handmade" class="icon"> <br>
				<a href="" class="iconText">수공예</a>
			</div>

			<div class="span" align="center">
				<img src="img/미술.png" id="art" class="icon"> <br> <a
					href="" class="iconText">미술</a>
			</div>

			<div class="span" align="center">
				<img src="img/액티브티.png" id="activity" class="icon"> <br>
				<a href="" class="iconText">액티브티</a>
			</div>

			<div class="span" align="center">
				<img src="img/뷰티.png" id="beauty" class="icon"> <br> <a
					href="" class="iconText">뷰티</a>
			</div>

			<div class="span" align="center">
				<img src="img/음악.png" id="music" class="icon"> <br> <a
					href="" class="iconText">음악</a>
			</div>

			<div class="span" align="center">
				<img src="img/언어.png" id="language" class="icon"> <br>
				<a href="" class="iconText">언어</a>
			</div>


			<div class="span" align="center">
				<img src="img/웹개발.png" id="webDevelopment" class="icon"> <br>
				<a href="" class="iconText">웹개발</a>

			</div>
          

            <div class="span" align="center">
                <img src="img/기타등등.png" id="exception" class="icon">
                <br>
                <a href="" class="iconText">기타등등</a>
            </div>



        </div><br><br>

        <form action="">
            <div align="center">
                <div class="input-group mb-3" style="width:600px;">
                    <input type="text" class="form-control" placeholder="class 명 입력">
                    <div class="input-group-append">
                        <button class="btn btn-success" type="submit">Go</button>
                    </div>
                </div>
            </div>
        </form>

        <form action="">
            <div align="center">
                <h2 align="center">전체</h2>
                <div style="width: 1100px; height: 500px; border: 2px double black; background: white;">
            <table align="left">
                <tr>
                    <td>
                        <div align="center" style="width: 150px; height: 150px;">
                            <img src="img/시간.png" id="cook" class="icon" style="width: 125px; height: 125px">
                            <br>
                            <a style="margin-left: 5px;">사용자</a>
                        </div>
                    </td>

                    <td>
                        <div style="display: inline-block">
                            <h6>[원데이]베이커리/케익너만을<br>위한 케익 만들기<br>40,000/1인</h6>
                        </div>
                        <br>
                        <img src="img/원.png" id="money" class="icon" width="20px" height="20px">

                    </td>
                </tr>

            </table>
                
                </div>

            </div><br><br>

            <button type="button" class="btn btn-secondary" style="left: 1400px; top: 1100px; margin-left: 800px; "onclick="location.href='classReqResistForm.do'">클래스 요청 하기</button>
                

        </form>

</div>


</body>

</html>