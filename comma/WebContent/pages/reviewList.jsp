<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

    <title>Insert title here</title>
</head>


<body>
    <jsp:include page="header.jsp"></jsp:include><br>
    <jsp:include page="alert/photo_review_write.jsp"></jsp:include><br>
    <jsp:include page="alert/photo_review_view.jsp"></jsp:include><br>


    <h2 style="margin-left: 500px; display: inline-block;  margin-bottom: 50px;">리뷰</h2>
    <button type="button" class="btn btn-outline-secondary" style="display: inline-block; margin-left: 850px;" onclick="pReview_write_open()">리뷰 작성</button>

    <div class="container">


        <div class="card" style="width:350px" onclick="pReview_view_open('number')">
            <img class="card-img-top" src="img/공방1.jpg" style="width:100%">
            <div class="card-body">
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
                            <h5>존잼 #ㅁㅇㄹㄶ니울ㄴ위ㅏㅜㅅ</h5>
                        </div>
                        

                    </td>
                </tr>

            </table>

            </div>
        </div>
    </div>


</body>

</html>