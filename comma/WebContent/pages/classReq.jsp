<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
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
    <jsp:include page="header.jsp"></jsp:include><br><br><br>

    <div align="center">
        <div align="left" style="width: 1200px;">
            <table>
                <tr>
                    <td>
                        <div class="CR_span1" align="center">
                            <img src="img/시간.png" id="location" width="200px;" height="200px;">
                            <br>
                            <h5 style="font-size:15px; margin-top:15px;">사용자</h5>
                        </div>
                    </td>

                    <td>
                        <div style="display: inline-block">
                            <!-- 제목 -->
                            <h4 style="font-size:20px; font-weight:800px;">수영 배우고 싶어요</h4><br>
                            <!-- 내용 -->
                            <pre style="font-size:15px;">
수영 기초반을 3달전 수강한 적이이으면 물에 뜨는 것과 자유형 정도 는 할수 있습니다 .

수영 중에서 배영 만 배우고 싶습니다, 

수업 시간은  딱 한시간을 원합니다

일정은 협의 가능 합니다 .</pre>
                            
                            
                        </div>

                        
                    </td>
                </tr>
            </table>

            <br>
            <br>

            <div class="CR_span" align="center">
                <img src="img/위치.png" id="location" class="CR_icon2">
                <br>
                <a href="" class="iconText">서울시/영등포구</a>
            </div>

            <div class="CR_span" align="center">
                <img src="img/인원수.png" id="people" class="CR_icon2">
                <br>
                <a href="" class="iconText">1:1</a>
            </div>

            <div class="CR_span" align="center">
                <img src="img/시간.png" id="time" class="CR_icon2">
                <br>
                <a href="" class="iconText">시간</a>
            </div>

            <div class="CR_span" align="center">
                <img src="img/원.png" id="money" class="CR_icon2">
                <br>
                <a href="" class="iconText">30,000/1회</a>
            </div>
            <div class="menu" align="center" style="border-bottom:1px solid #555; width:800px;"></div>
            
            <br><br><br>
            <button type="button" class="btn btn-outline-secondary" style="margin-left: 150px">선생님하기 요청</button>
            
            <button type="button" class="btn btn-outline-secondary" style="margin-left: 50px; width: 300px" onclick="location.href='talk.do'">1:1톡</button>



        </div>


    </div>


</body>

</html>