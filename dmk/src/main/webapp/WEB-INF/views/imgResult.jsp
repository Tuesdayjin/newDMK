<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.File" %>
    <c:set var="cpath" value="${pageContext.request.contextPath}"/>
        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Dramarket</title>
<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css" integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+" crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!--bootstrap-->
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
    <link rel="stylesheet" href="${cpath}/resources/css/font.css">
    <script src="js/morph/bootstrap.min.js"></script>

<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
 <!-- Bootstrap Icons library -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
 <title>Dramarket</title>

<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css"
	integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+"
	crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<!--bootstrap-->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
<script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--슬릭 슬라이더-->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<style>
    .slick-list {
  position: relative;
  overflow: hidden;
  display: block;
  width: 100%;
  height: auto; /* slick-list 높이 자동 조정 */
}
.save-container {
  position: relative;
  display: flex;
  height: 2.8rem;
  width: 100%;
  min-width: 200px;
  max-width: 250px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 20px 20px 30px rgba(0, 0, 0, .05);
}

.save-container input {
  height: 100%;
  width: 100%;
  border-radius: 8px;
  border: 1px solid  rgb(176 190 197);
  background-color: transparent;
  padding: 0.625rem 70px 0.625rem 0.75rem;
  font-size: 0.875rem;
  line-height: 1.25rem;
  font-weight: 400;
  color: rgb(69 90 100);
  outline: none;
  transition: all .15s cubic-bezier(0.4, 0, 0.2, 1);
}

.save-container input:focus {
  border: 1px solid rgb(255, 211, 105);
}

.savefilename-btn {
  position: absolute;
  width: 65px;
  right: 4px;
  top: 4px;
  bottom: 4px;
  z-index: 10;
  border-radius: 4px;
  background-color: rgb(255, 211, 105);
  color: #fff;
  padding-top: .25rem;
  padding-bottom: .25rem;
  padding-left: 0.5rem;
  padding-right: 0.5rem;
  text-align: center;
  vertical-align: middle;
  font-size: 12px;
  font-weight: 600;
  text-transform: uppercase;
  border: none;
  transition: .6s ease;
}

.savefilename-btn:hover {
  right: 2px;
  top: 2px;
  bottom: 2px;
  border-radius: 8px;
}

.save-container input:placeholder-shown ~ .savefilename-btn {
  pointer-events: none;
  background-color: gray;
  opacity: 0.5;
}
.saveFilename{
background-color:#EEEEEE;
box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
padding : 20px;
width:80%;
border-radius: 5px;

}

	        .content {
            display: flex;
            justify-content: center;
             align-items: center;
            flex-wrap: wrap;
        }
        .player-Bigbox{
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 40px;
        	border-radius: 5px;
        		width : 80%;
	height : auto; 	
        }
	.player-box{
width : 100%;
	height : auto;
	background-color : #EEEEEE;
	border-radius: 5px;
    padding : 10px;
	}
	.player-box img{
	width : 100%;
	height : 100%;
	}
	
.predict-container{
margin-bottom:50px;
}
 .predict-Bigbox{
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 50px;
        		width : 80%;
	height : auto; 	
	border-radius: 5px;
        }
	.predictTitle-box{
width : 100%;
	height : auto;
	}	
	.predict-title h3{
	color:#393E46;
	margin-left:40px;
	margin-top:40px;
	}
	
	.predict-title p{
	color : rgb(57, 62, 70,0.5);
	margin-left:40px;
	}
	.predictObj-box{
	width : 100%;
	height : auto;
	}

	   .predict-card{
	   position: relative;
	   margin-top : 20px;
	   width : 100%;
display: flex;
  /*overflow-x: auto;*/
  border-radius= 10;
    }

.search-objImg{
display: inline-block;
vertical-align: top;
margin-left:20px;
margin-right:20px;
         margin-bottom:40px;  
      flex: 0 0 auto;
      padding: 20px;
      width: 200px;
      height: 200px;
}
.search-objImg img{
display: block;
      width: 100%;
      height: 100%;
      border-radius: 10px;
      box-shadow: 5px 5px 10px rgba(55, 94, 148, 0.2), -5px -5px 10px rgba(255, 255, 255, 0.4);
      object-fit: cover;s
}

        .objImg{
margin-left:20px;
margin-right:20px;
         margin-bottom:40px;  
      flex: 0 0 auto;
      padding: 20px;
      width: 200px;
      height: 200px;
    }
  
    .objImg img {
     display: block;
      width: 100%;
      height: 100%;
      border-radius: 10px;
      box-shadow: 5px 5px 10px rgba(55, 94, 148, 0.2), -5px -5px 10px rgba(255, 255, 255, 0.4);
       object-fit: cover;
    }

.predict-row{
width : 100%;
}


/*로더*/
.wrapper {
  width: 200px;
  height: 60px;
  position: relative;
  z-index: 1;
   margin-left:405px;
   margin-top : 30px;
   margin-bottom : 30px;
}

.circle {
  width: 20px;
  height: 20px;
  position: absolute;
  border-radius: 50%;
  background-color: #FFD369;
  left: 15%;
  transform-origin: 50%;
  animation: circle7124 .5s alternate infinite ease;
}

@keyframes circle7124 {
  0% {
    top: 60px;
    height: 5px;
    border-radius: 50px 50px 25px 25px;
    transform: scaleX(1.7);
  }

  40% {
    height: 20px;
    border-radius: 50%;
    transform: scaleX(1);
  }

  100% {
    top: 0%;
  }
}

.circle:nth-child(2) {
  left: 45%;
  animation-delay: .2s;
}

.circle:nth-child(3) {
  left: auto;
  right: 15%;
  animation-delay: .3s;
}

.circle2 {
  width: 20px;
  height: 4px;
  border-radius: 50%;
  background-color: rgb(57, 62, 70,0.9);
  position: absolute;
  top: 62px;
  transform-origin: 50%;
  z-index: -1;
  left: 15%;
  filter: blur(1px);
  animation: circle2046 .5s alternate infinite ease;
}

@keyframes circle2046 {
  0% {
    transform: scaleX(1.5);
  }

  40% {
    transform: scaleX(1);
    opacity: .7;
  }

  100% {
    transform: scaleX(.2);
    opacity: .4;
  }
}

.circle2:nth-child(4) {
  left: 45%;
  animation-delay: .2s
}

.circle2:nth-child(5) {
  left: auto;
  right: 15%;
  animation-delay: .3s;
}
@font-face {
    font-family: 'Cafe24Danjunghae';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Danjunghae.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
 </style>

</head>
<body>
<%
String topPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\crops\\top";
String bottomPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\crops\\bottom";
String dressPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\crops\\dress";
String bagPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\crops\\bag";
File topDir = new File(topPath);
File bottomDir = new File(bottomPath);
File dressDir = new File(dressPath);
File bagDir = new File(bagPath);
%>
<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>

	<div
		style="background-color: #222831; position: sticky; top: 0; z-index: 9999;">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid" style="width: 70%;">
				<a class="navbar-brand" href="Main.do" style="color: #FFD369;">
               <span  style="font-size:23px; font-family: 'Cafe24Danjunghae';">DRAMARKET</span>
				<img src="${cpath}/resources/img/dmkimg/dmksim.png"width="20" height="24" style="margin-left:3px; margin-top:4px;" class="d-inline-block align-text-top">
                  </a>
				<div class="d-flex justify-content-end">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarColor02"
						aria-controls="navbarColor02" aria-expanded="false"
						aria-label="Toggle navigation">
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
								<li class="nav-item"><a class="nav-link" href="myPage.do" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">MyPage</a>
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
<div class="container">
		<div class="header">
		</div>
		<div class="content">
				<div class="player-Bigbox">
				<div class="player-box">
				<img  class="capture" src="http://localhost:8081/flask/upload/${fileName}.jpg">
				</div>
				</div>
</div>
</div>

<!--인식한 객체 출력-->
<div class="container predict-container">
		<div class="content">
				<div class="predict-Bigbox">
				<div class="predictTilte-box">
					<div class="predict-title">
<h3>재생 중인 장면 속 상품입니다</h3>
<p>상세정보를 보려면 이미지를 클릭하세요</p>
</div>

				</div>
				<div class="predictObj-box">
				
<div id="predict-slick" class="predict_content predict-card">
<%
try {
    if (topDir != null) {
        for(int i=0; i<topDir.list().length; i++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/crops/top/<%=topDir.list()[i]%>'/></a>
           </div>
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("topDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (bottomDir != null) {
        for(int i=0; i<bottomDir.list().length; i++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/crops/bottom/<%=bottomDir.list()[i]%>'/></a>
           </div>
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("bottomDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (dressDir != null) {
        for(int i=0; i<dressDir.list().length; i++) {
            // 이미지 출력 코드%>
           <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/crops/dress/<%=dressDir.list()[i]%>'/></a>
           </div>
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("dressDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (bagDir != null) {
        for(int i=0; i<bagDir.list().length; i++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                 <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/crops/bag/<%=bagDir.list()[i]%>'/></a>
           </div>
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("bagDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등%>
</div><!-- end slick -->
<%}%>      
</div>
</div>
</div><!--end content-->
</div><!--end predict-container-->
<script>
//슬릭
$(document).ready(function(){
	$('#predict-slick').slick({
		  dots: true, //페이지 네비게이션
		  arrows:true, // next, prev 이동 버튼
		  autoplay:true, // 자동 넘김 여부
		  infinite: true, //반복설정
		  speed: 300, //슬라이드 속도
		  autoplaySpeed : 10000,   // 자동 넘김시 슬라이드 시간
		  pauseOnHover : true,// 마우스 hover시 슬라이드 멈춤
		  vertical : false,  // 세로 방향 슬라이드 옵션
		  slidesToShow: 4, //보여질 슬라이드 수
		  slidesToScroll: 3, //넘겨질 슬라이드 수
		  responsive: [ // -> 반응형 옵션
		    {
		      breakpoint: 1024, // 반응형 ~ 1024
		      settings: {
		        slidesToShow: 3,
		        slidesToScroll: 3,
		        infinite: true,
		        dots: true
		      }
		    },
		    {
		      breakpoint: 600,// 반응형 ~ 600
		      settings: {
		        slidesToShow: 2,
		        slidesToScroll: 2
		      }
		    },
		    {
		      breakpoint: 480,// 반응형 ~ 480
		      settings: {
		        slidesToShow: 1,
		        slidesToScroll: 1
		      }
		    }
		  ]
		});
});
</script>

      

<!-- 객체 이미지 검색 -->
<div class="container predict-container">
		<div class="content">
<form method="post" id = "search_form">
	<input type="hidden" id="search_img" name="img_path" value="">
	<input type="submit" id="search_btn" style="display:none;">
</form>
<div class="predict-Bigbox">
    <div class="predictTilte-box">
      <div class="predict-title">
<h3 class="search-title" style="display:none;">선택한 상품의 정보입니다</h3>
<p class="search-subTitle"  style="display:none;">이미지를 클릭하면 판매사이트로 이동합니다</p>
</div>
    </div>
    <div class="predictObg-box">
<div class="search-card">
  <div id="search" class="search-slick">
  <div class="wrapper"   style="display:none;">
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle2"></div>
    <div class="circle2"></div>
    <div class="circle2"></div>
</div>


  </div>
       </div> <!-- end search-card -->
</div>
     </div>
</div><!--end content-->

<!-- 찜하기 -->
<c:if test="${!empty mvo}">
<div id="saveResult" class="content" style="display:none; margin-top : 20px;">
<div class="saveFilename">
<div class="row">
<div class="col-8">
<h5 style="color:#222831;">&#x1F4BE 분석된 결과를 저장하면 마이페이지에서 다시 볼 수 있습니다</h5>
<span style="margin-left:32px;">알아보기 쉬운 코멘트를 입력해보세요</span>
</div>
<div class="col-4">
<div class="save-container">
<form action="historyInsert.do">
<input type="hidden" name="h_kind" value="이미지">
<input type="hidden" name="h_value" value="${fileName}">
  <input type="text" name="h_comment" value="" placeholder="코멘트를 남겨주세요" required>
  <button class="savefilename-btn" type="submit">
    save
  </button>
 </form>
</div>
</div>
</div>
</div>
</div>
</c:if>
<!-- end찜하기 -->


</div><!--end predict-container-->
 <script type="text/javascript">
 var isSlickInitialized = false;
 
 $(function() {
     $(".objImg img").click(function() {
      var imgpath = $(this).attr('src');
      imgpath = 'C:/dmkServer/' + imgpath.split('flask/')[1];
      $("#search_img").val(imgpath);
      
      // slick 해제
      if (isSlickInitialized) {
        $('.search-slick').slick('unslick');
        isSlickInitialized = false;
      }
      
      // 검색 버튼 클릭 이벤트 강제로 실행
      $("#search_btn").trigger('click');
      // 로딩 화면 보이기
      $(".wrapper").show();
     });   
 });

  $(function() {	  
     $("#search_btn").on("click", function(event) {
         event.preventDefault();
         var form = $('#search_form')[0];
         var data = new FormData(form);

         $.ajax({
             url : "http://127.0.0.1:5001/seek",
             async : true,
             type : "POST",
             data: data,
             processData : false,
             contentType : false,
             cache : false,
             timeout : 600000,
             success : function(data) {
                 console.log(data)                  
                 var html = "";
                 for (var i = 0; i < 5; i++) {  
                     html += '<div class="search-objImg"><a href="' + data['link'][i] + '" target="_blank"><img src="' + data['image'][i] + '"></a></div>';
                 }
                 $(".search-title").show();
                 $(".search-subTitle").show();
                 $('#search').html(html);
                 $("#saveResult").show();
                 
                 // slick 해제
                 if ($('.search-slick').hasClass('slick-initialized')) {
                   $('.search-slick').slick('unslick');
                 }
                 
              // slick 초기화
                 if (!isSlickInitialized) {
                 $('.search-slick').slick({
           		  dots: true, //페이지 네비게이션
           		  arrows:true, // next, prev 이동 버튼
           		  autoplay:true, // 자동 넘김 여부
           		  infinite: true, //반복설정
           		  speed: 300, //슬라이드 속도
           		  autoplaySpeed : 10000,   // 자동 넘김시 슬라이드 시간
           		  pauseOnHover : true,// 마우스 hover시 슬라이드 멈춤
           		  vertical : false,  // 세로 방향 슬라이드 옵션
           		  slidesToShow: 4, //보여질 슬라이드 수
           		  slidesToScroll: 3, //넘겨질 슬라이드 수
           		  responsive: [ // -> 반응형 옵션
           		    {
           		      breakpoint: 1024, // 반응형 ~ 1024
           		      settings: {
           		        slidesToShow: 3,
           		        slidesToScroll: 3,
           		        infinite: true,
           		        dots: true
           		      }
           		    },
           		    {
           		      breakpoint: 600,// 반응형 ~ 600
           		      settings: {
           		        slidesToShow: 2,
           		        slidesToScroll: 2
           		      }
           		    },
           		    {
           		      breakpoint: 480,// 반응형 ~ 480
           		      settings: {
           		        slidesToShow: 1,
           		        slidesToScroll: 1
           		      }
           		    }
           		  ]
           		});
                 isSlickInitialized = true;
                 }  
                 
             },
             error : function(e) {
                 console.log("ERROR : ", e);
                 alert("fail");
             },
             complete : function() {
                 // 로딩 화면 숨기기
                 $(".wrapper").hide();
             }
         });

     })
  });
  
  $(function() {
      $(".objImg").click(function() {
           $(".search-objImg").hide();
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
 

				</div>
				</div>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto" style="width:100%;">
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
<script>

</script>
</body>
</html>