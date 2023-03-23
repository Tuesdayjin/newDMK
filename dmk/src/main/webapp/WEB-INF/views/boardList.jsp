<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dramarket</title>
<link rel="stylesheet" href="${cpath}/resources/css/font.css">

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
<!-- Bootstrap Icons library -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet">
	
	<style>
	
/*글쓰기버튼*/
.col-2{
  display: flex;
  justify-content: flex-end;
  align-items: center;
}
.col-2 .w-btn {
  margin-right: 10px;
}

.write-btn {
  width: 50px;
  height: 40px;
  border: 1px solid #FFD369;
  background: #FFD369;
  border-radius: 25px;
  overflow: hidden;
  position: relative;
  transition: width 0.2s ease-in-out;
  font-weight: 500;
  font-family: inherit;
}

.writeadd-btn:hover {
  width: 120px;
}

.writeadd-btn::before,
.writeadd-btn::after {
  transition: width 0.2s ease-in-out, border-radius 0.2s ease-in-out;
  content: "";
  position: absolute;
  height: 4px;
  width: 10px;
  top: calc(50% - 2px);
  background: white;
}

.writeadd-btn::after {
  right: 14px;
  overflow: hidden;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
}

.writeadd-btn::before {
  left: 14px;
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px;
}

.write-btn:focus {
  outline: none;
}

.btn-txt {
  opacity: 0;
  transition: opacity 0.2s;
  font-weight : 300;
}

.writeadd-btn:hover::before,
.writeadd-btn:hover::after {
  width: 4px;
  border-radius: 2px;
}

.writeadd-btn:hover .btn-txt {
  opacity: 1;
}

.add-icon::after,
.add-icon::before {
  transition: all 0.2s ease-in-out;
  content: "";
  position: absolute;
  height: 20px;
  width: 2px;
  top: calc(50% - 10px);
  background: white;
  overflow: hidden;
}

.add-icon::before {
  left: 22px;
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px;
}

.add-icon::after {
  right: 22px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
}

.writeadd-btn:hover .add-icon::before {
  left: 15px;
  height: 4px;
  top: calc(50% - 2px);
}

.writeadd-btn:hover .add-icon::after {
  right: 15px;
  height: 4px;
  top: calc(50% - 2px);
}

.form button {
  border: none;
  background: none;
  color: #8b8ba7;
}
/* styling of whole input container */
.form {
  --timing: 0.3s;
  --width-of-input: 300px;
  --height-of-input: 40px;
  --border-height: 2px;
  --input-bg: #fff;
  --border-color: #FFD369;
  --border-radius: 30px;
  --after-border-radius: 1px;
  position: relative;
  width: var(--width-of-input);
  height: var(--height-of-input);
  display: flex;
  align-items: center;
  padding-inline: 0.8em;
  border-radius: var(--border-radius);
  transition: border-radius 0.5s ease;
  background: var(--input-bg,#fff);
}
/* styling of Input */
.input {
  font-size: 0.9rem;
  background-color: transparent;
  width: 100%;
  height: 100%;
  padding-inline: 0.5em;
  padding-block: 0.7em;
  border: none;
}
/* styling of animated border */
.form:before {
  content: "";
  position: absolute;
  background: var(--border-color);
  transform: scaleX(0);
  transform-origin: center;
  width: 100%;
  height: var(--border-height);
  left: 0;
  bottom: 0;
  border-radius: 1px;
  transition: transform var(--timing) ease;
}
/* Hover on Input */
.form:focus-within {
  border-radius: var(--after-border-radius);
}

input:focus {
  outline: none;
}
/* here is code of animated border */
.form:focus-within:before {
  transform: scale(1);
}
/* styling of close button */
/* == you can click the close button to remove text == */
.reset {
  border: none;
  background: none;
  opacity: 0;
  visibility: hidden;
}
/* close button shown when typing */
input:not(:placeholder-shown) ~ .reset {
  opacity: 1;
  visibility: visible;
}
/* sizing svg icons */
.form svg {
  width: 17px;
  margin-top: 3px;
}
	
	   .myswitch{
     display: flex;
  flex-direction: column;
  justify-content: flex-end;
   }
   .form-check-label {
  margin-right: 5;
}
	
.grabox{
 position: absolute;
  z-index: 1;
  top: 0;
  background: linear-gradient(to bottom, #222831, rgba(34, 40, 49, 0.3));
  height: 100%;
  width: 100%;
}
    .titleRow p {
        display: inline-block;
        margin-right: 10px;
    }
  .titleBoarderBox {
    position: absolute;
    top: 45%;
    left: 33%;
    transform: translate(-50%, -50%);
  }
  .subTitleRow {
    margin-top: -15px;
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
.boardInputGroup{
margin-bottom : 40px;
padding : 10px;
border-radius : 5px;
background-color : rgba(238, 238, 238, 0.8); 
}     
      </style>
</head>
<body>
	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top" >TOP</button>
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
	<!-- Header-->
<header class="py-5" style="background-color: #393E46; height:350px;">
<div class="grabox">
<div class="titleBoarderBox">
<div class="titleRow">
<p class="shopping" style="color:#EEEEEE;">Shopping </p>
		<p class="inthe" style="color:#EEEEEE;">in the </p>
		<p class="scene" style="color:#EEEEEE;">Scene</p>
<div class="subTitleRow">
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
 <!-- Testimonial section-->
   <div class="py-5">
      <div class="container px-5 my-5">
         <div class="container">
            <div class="container text-center">
               <div class="row boardInputGroup">
               <c:if test="${!empty mvo}">
                  <div class="col-2">
                  </div>
                  </c:if>
                  <div class="col-8" style="  display: flex;  justify-content: center;  align-items: center;">
  <form class="form" action="boardSearch.do" style="display: flex;">
      <button type="submit">
          <svg width="17" height="16" fill="none" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="search">
              <path d="M7.667 12.667A5.333 5.333 0 107.667 2a5.333 5.333 0 000 10.667zM14.334 14l-2.9-2.9" stroke="currentColor" stroke-width="1.333" stroke-linecap="round" stroke-linejoin="round"></path>
          </svg>
      </button>
      <input name=searchWord class="input" placeholder="검색어를 입력하세요" type="text">
      <button class="reset" type="reset">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
          </svg>
      </button>
  </form>
                 <!--  <form action="boardSearch.do">
                  <input type="text" name=searchWord>
                  <button type="submit" class="btn btn-sm">검색</button>
                  </form> -->
                  </div>
                  <div class="col-2">
                  <c:if test="${!empty mvo}">
<div class="w-btn">
<button id="writebtn" class="write-btn writeadd-btn">
    <div class="add-icon"></div>
    <div class="btn-txt">글쓰기</div>
</button>
</div>
                  </div>
                  </c:if>
               </div>
            </div>

            <div id=scrollContainer class="row" data-masonry='{"percentPosition" : true}'>
               <c:forEach var="board_vo" items="${list}">
                  <div class="col-lg-4 col-md-6 col-6">
                     <div class="card shadow border-0"
                        style="background-color: #EEEEEE;">
                        <c:if test="${!empty board_vo.img_name}">
                           <!-- 이미지 있을때만 -->
                           <img class="card-img-top"
                              src="http://localhost:8081/boardimg/thumb_${board_vo.img_name}"
                              alt="Post 1" />
                        </c:if>
                        <div class="card-body p-4"
                           href="boardContent.do?num=${board_vo.num}">


                           <jsp:useBean id="now" class="java.util.Date" />
                           <fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate" />
                           <fmt:formatDate value="${board_vo.indate}" pattern="yyyyMMdd"
                              var="writeDate" />
                           <c:if test="${nowDate == writeDate}">
                              <div class="badge bg-primary bg-gradient rounded-pill mb-2">New</div>
                           </c:if>
                           <a class="text-decoration-none link-dark stretched-link"
                              href="boardContent.do?num=${board_vo.num}"><h5
                                 class="card-title mb-3">${board_vo.title}</h5></a>

                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0 ">
                           <div class="d-flex align-items-end justify-content-between">
                              <div class="d-flex align-items-center">
                                 <img class="rounded-circle me-3"
                                    src="http://localhost:8081/profile/profile_${board_vo.profile_name}" alt="..."
                                    style="width:45px; height:45px;" />
                                 <div class="small">
                                    <div class="fw-bold">${board_vo.nick}</div>
                                    <div class="text-muted">
                                       <fmt:formatDate value="${board_vo.indate}"
                                          pattern="yyyy-MM-dd HH시 mm분" />
                                    </div>
                                    <div class="text-muted">read ${board_vo.views}</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </c:forEach>
            </div>
         </div>
         <script>

//글작성하기
// 버튼 요소 가져오기
const writeBtn = document.getElementById('writebtn');

// 클릭 이벤트 처리
writeBtn.addEventListener('click', () => {
  // 이동할 페이지 URL 설정
  const url = 'boardInsert.do';

  // 현재 창에서 페이지 이동
  window.location.href = url;
});



</script>

      </div></div>	
		<!-- Blog preview section-->
		<section class="py-5"></section>

		</main>
		<!-- Footer-->
		<footer class="py-4 mt-auto"  style="background-color:#393E46;">
			<div class="container px-5">
				<div
					class="row align-items-center justify-content-between flex-column flex-sm-row">
					<div class="col-auto">
						<div class="small m-0 text-white">Copyright &copy; DRAMARKET
							2023</div>
					</div>
					<div class="col-auto">
						<a class="link-light small" href="#!">Privacy</a> <span
							class="text-white mx-1">&middot;</span> <a
							class="link-light small" href="#!">Terms</a> <span
							class="text-white mx-1">&middot;</span> <a
							class="link-light small" href="#!">Contact</a>
					</div>
				</div>
			</div>
		</footer>
		<!-- Bootstrap core JS-->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="js/scripts.js"></script>
		<!--Masonry.js-->
		<script
			src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
			
<script>
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
<script>
var loading = false;
var page = 1; // 초기 페이지 값

$(window).scroll(function() {
	
	if(window.location.href.indexOf('searchWord=') !== -1) {
        return; // searchWord 파라미터가 있으면 무한스크롤 동작 안함
    }
	
    var bottomOffset = $(document).height() - $(window).height() - $(window).scrollTop();
    var threshold = 300; // 임계값

    if (bottomOffset <= threshold && !loading) {
        loading = true;
        var nextPage = page + 1;
        $.ajax({
            url: 'boardList.do',
            type: 'GET',
            dataType: 'html',
            data: {
                page: nextPage // 현재 페이지 전달
            },
            success: function(data) {
            	  var $newItems = $(data).find('#scrollContainer > div');
            	  $('#scrollContainer').append($newItems).masonry('appended', $newItems);
            	  loading = false;
            	  if ($newItems.length === 0) {
            	    $(window).off('scroll');
            	  } else {
            		  page = nextPage;
            	  }
            	  $('#scrollContainer').masonry(); // Masonry 업데이트
            	}
        });
    }
});
</script>			
</body>
</html>

