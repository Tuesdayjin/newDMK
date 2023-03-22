<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="cpath" value="${pageContext.request.contextPath}"/>     
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dramarket</title>
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
	<link rel="stylesheet" href="${cpath}/resources/css/font.css">
<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css" integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+" crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!--bootstrap-->
    <script src="js/morph/bootstrap.min.js"></script>

<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
 <!-- Bootstrap Icons library -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
<style>

.mypageThum{
width : 100px;
height : 100px;
}
.mypageThum img{
width : 100%;
height : 100%;
}
.grabox{
 position: absolute;
  z-index: 1;
  top: 0;
  background: linear-gradient(to bottom, #222831, rgba(34, 40, 49, 0.3));
  height: 100%;
  width: 100%;
}
header {
  position: relative;
  z-index: 2;
}

.selectNavBar {
  position: relative;
  z-index: 2;
}

      .headerimg {
  max-height: 100%;
  max-width: 100%;
  height: auto;
  width: 100%;
      }
      
    .card {
        width: 550px; 
    }

    .insertRe {
  margin-bottom: 20px;
}
@font-face {
    font-family: 'Cafe24Danjunghae';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Danjunghae.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.titleborderbox{
margin-left:18%;
margin-top:5%;
   width:100%;
  height:70%;
}
.introTitle p{
font-family: 'GmarketSans';
font-weight : 300;
margin-top : 19px;
color : #FFFFFF;
font-size: 20px;
}
.shopping{
font-family: 'GmarketSans';
font-size : 60px;
font-weight : 700;
color : #FFD369;
}
.inthe{
font-family: 'GmarketSans';
font-size : 45px;
font-weight : 300;
color : #FFD369;
}
.scene{
font-family: 'GmarketSans';
font-size : 60px;
font-weight : 700;
color : #FFD369;
}

</style>

</head>
<body>
	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>
		
		
        <div style="background-color: #222831; position: sticky; top: 0; z-index: 9999;">
            <nav class="navbar navbar-expand-lg">
              <div class="container-fluid" style="width: 70%;">
                  <a class="navbar-brand" href="Main.do" style="color: #FFD369;">
               <span  style="font-size:23px; font-family: 'Cafe24Danjunghae';">DRAMARKET</span>
				<img src="${cpath}/resources/img/dmkimg/dmksim.png"width="20" height="24" style="margin-left:3px; margin-top:4px;" class="d-inline-block align-text-top">
                  </a>
                  <div class="d-flex justify-content-end">
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarColor02">
                      
                      <ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link " href="Main.do" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Home
									<span class="visually-hidden">(current)</span>
							</a></li>
								<li class="nav-item"><a class="nav-link" href="boardList.do" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Board</a>
								</li>
							<c:if test="${!empty mvo}">
								<li class="nav-item"><a class="nav-link" href="#" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">MyPage</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="logout.do" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Logout</a>
								</li>
							</c:if>
							<c:if test="${empty mvo}">
								<li class="nav-item"><a class="nav-link" href="login.do" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Login</a>
								</li>
							</c:if>
						</ul>
                  </div>
              </div>
              </div>
            </nav>
          </div>
<!-- Header-->
<header class="py-5" style="background-color: #393E46; height:350px;">
<div class="grabox">
<div class="titleborderbox">
  <div class="row" style="width:auto;">
    <div class="col-sm-8">
		<span class="shopping" style="color:#EEEEEE;">Shopping </span>
		<span class="inthe" style="color:#EEEEEE;">in the </span>
		<span class="scene" style="color:#EEEEEE;">Scene</span>
	</div>
  </div>
  <div class="row"  style="width:auto;">
    <div class="col-sm">
		<span style="font-size:20px; font-family: 'NanumSquare'; font-weight:300; color:#FFFFFF;">영상 속 그 제품, 스쳐가지 마세요</span>
    </div>
  </div>
  </div>
</div>
<img class="headerimg" src="${cpath}/resources/img/dmkimg/Drama.png">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder text-white mb-2"></h1>
                    <p class="lead fw-normal text-white-50 mb-4"></p>
                </div>
            </div>
            
        </div>
    </div>
</header>
<section class="py-5">
<div class="container">
<div class="row">
<div class="col-3">

<div class="card profile-card" style="width: 18rem; background-color : rgba(238, 238, 238,0.8);">
   <img class="rounded-circle me-3"
                                    src="http://localhost:8081/profile/profile_${board_vo.profile_name}" alt="..."
                                    style="width:45px; height:45px;" />
  <div class="card-body">
    <h5 class="card-title">${board_vo.nick}</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <div class="card-footer">
    <a href="#" class="card-link">내 정보 수정</a>
    <a href="#" class="card-link">고객 센터</a>
  </div>
</div>

</div>
<div class="col-9">
<div class="card myBoard-card" style="width: 100%; background-color : rgba(238, 238, 238,0.8);">
<div class="card-header">
<h4>내 게시글</h4>
</div>
  <div class="card-body">
  <table class="table ">
  <thead>
    <tr>
      <th scope="col">미리보기</th>
      <th scope="col">제목</th>
      <th scope="col">조회수</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="board_vo" items="${list}">
    <tr>
      <td>
      <a class="text-decoration-none link-dark" href="boardContent.do?num=${board_vo.num}">
       <c:if test="${!empty board_vo.img_name}">
      <div class="mypageThum">
       <!-- 이미지 있을때만 -->
        <img class="card-img-top" src="http://localhost:8081/boardimg/thumb_${board_vo.img_name}" alt="Post 1" />        
      </div>
        </c:if>
      </a>
      </td>
      <td>
      <a class="text-decoration-none link-dark" href="boardContent.do?num=${board_vo.num}"><p style="font-size: 16px; font-family: 'NanumSquare';">${board_vo.title}</p></a>
      </td>
      <td>
      <p style="font-size: 16px; font-family: 'NanumSquare';">${board_vo.views}</p>
      </td>
      <td>
      <p style="font-size: 16px; font-family: 'NanumSquare';"><fmt:formatDate value="${board_vo.indate}"  pattern="yyyy-MM-dd HH시 mm분" /></p>
      </td>
      <td>
      <!-- <a href="boardContent.do?num=${board_vo.num}" role="button"><p style="font-size: 16px; font-family: 'NanumSquare';">삭제</p></a> -->
      <form id="frm">
      <input type="hidden" id="boardNum" value="${board_vo.num}"/>
      <button id="delBoard" data-btn="remove" class="btn btn-sm" style="color=black; background-color:#EEEEEE;">X
      </button>
      </form>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
  </div>
</div>
</div>
<div class="col-9">
<div class="card myBoard-card" style="width: 100%; background-color : rgba(238, 238, 238,0.8);">
<div class="card-header">
<h4>내 히스토리</h4>
</div>
  <div class="card-body">
  <table class="table ">
  <thead>
    <tr>
      <th scope="col">날짜</th>
      <th scope="col">구분</th>
      <th scope="col">설명</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="history_vo" items="${h_list}">
    <tr>
      <td>
      <p style="font-size: 16px; font-family: 'NanumSquare';"><fmt:formatDate value="${history_vo.h_indate}"  pattern="yyyy-MM-dd HH시 mm분" /></p>
      </td>
      <td>
      <p style="font-size: 16px; font-family: 'NanumSquare';">${history_vo.h_kind}</p>
      </td>
      <td>
      <c:if test="${history_vo.h_kind == '비디오'}">
      <a href="result.do?fileName=${history_vo.h_value}"><p style="font-size: 16px; font-family: 'NanumSquare';">${history_vo.h_comment}</p></a>
      </c:if>
      <c:if test="${history_vo.h_kind == '이미지'}">
      <a href="imgResult.do?fileName=${history_vo.h_value}"><p style="font-size: 16px; font-family: 'NanumSquare';">${history_vo.h_comment}</p></a>
      </c:if>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
  </div>
</div>
</div>
</div><!-- end row -->
</div><!-- end container -->
</section>

<!-- Footer-->
<footer class="py-4 mt-auto"  style="background-color:#393E46;">
<div class="container px-5">
    <div class="row align-items-center justify-content-between flex-column flex-sm-row">
        <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; DRAMARKET 2023</div></div>
        <div class="col-auto">
            <a class="link-light small" href="#!">Privacy</a>
            <span class="text-white mx-1">&middot;</span>
            <a class="link-light small" href="#!">Terms</a>
            <span class="text-white mx-1">&middot;</span>
            <a class="link-light small" href="#!">Contact</a>
        </div>
    </div>
</div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
//삭제
$(document).ready(function(){
    var formData = $("#frm");
    $("#delBoard").on("click", function(e){
        var btn = $(this).data("btn");
        if(btn == "remove") {
            formData.attr("action", 'boardDelete.do');
            formData.attr("method", "get");
        }
        formData.submit();
    });
});


	//to top button
	document.addEventListener("DOMContentLoaded", function() {
		// DOM이 완전히 로드된 후에 스크립트가 실행
		let mybutton = document.getElementById("myBtn");

		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block";
				mybutton.style.backgroundColor = "#FFD369";
			} else {
				mybutton.style.display = "none";
			}
		}


	});

	
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}

</script>
</body>
</html>