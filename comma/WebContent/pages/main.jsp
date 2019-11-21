<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/cssconfig.css">
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include><br><br> 

    <div align="center">
        <div style="width:1200px; height: 600px;">
            <div id="demo" class="carousel slide democlass" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/la.jpg" alt="Los Angeles" width="800" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="img/chicago.jpg" alt="Chicago" width="800" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="img/ny.jpg" alt="New York" width="800" height="500">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </div><br><br>

    <div align="left" style="margin-left: 500px;">
        <div style="width: 1200px;">
            <h2 style="font-weight: 900">인기 클래스</h2><br><br>

            <div align="Left">
                <img src="img/시간.png" id="cook" width="300px" height="300px">

            </div><br>

            <table>
                <tr>
                    <td>
                        <div align="Left">
                            <img src="img/시간.png" id="time" width="80px" height="80px">
                            <br>
                            <a style="margin-left: 13px;">사용자</a>
                        </div>
                    </td>

                    <td>
                        <div style="display: inline-block">
                            <h6>[원데이]베이커리/케익너만을<br>위한 케익 만들기<br>40,000/1인</h6>
                        </div>
                        <br><br>
                        <img src="img/원.png" id="cook" class="icon" width="20px" height="20px">

                    </td>
                </tr>

            </table>



        </div>


    </div>

</body>


</html>