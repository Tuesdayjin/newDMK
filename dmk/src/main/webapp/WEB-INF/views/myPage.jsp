<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
                              <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
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
</body>
</html>