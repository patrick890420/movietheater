<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css" type="text/css">
<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Simple Sidebar - Start Bootstrap Template</title>


<div class="d-flex" id="wrapper" style="width: 1536px; margin: 0 auto;">
  <!-- Sidebar-->

  <div class="border-end bg-white" id="sidebar-wrapper"
    style="margin-left: 30px;">
    <div class="sidebar-heading border-bottom bg-light"
      style="padding: 20px 16px;">My page</div>
    <div class="list-group list-group-flush">
      <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="memberUp.do">アカウント管理</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="myreser.do">私の予約</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mycash.do">決済リスト</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mypass.do">パスワード変更</a>        
        
    </div>
  </div>
  <!-- Page content wrapper-->
  <div id="page-content-wrapper">
    <!-- Top navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="width: 1180px; border: groove !important; margin-bottom: 10px;">
      <div class="container-fluid">
        <div class="main-content">
          <div class="container mt-7">
            <div class="row" style="margin-top: -6%;">
                 <h2 style="margin-top: 115px; margin-left: 190px; margin-bottom: 30px;">My Reservation.</h2>
                <h6 class="heading-small text-muted mb-4" style="margin-left: 190px;"></h6>
               <c:forEach items="${relist}" var="relist"> 
              <div class="col-lg-7">
              <div class="formform" style="margin-left: 150px;">
                <div class="anime__details__pic set-bg" style="margin-left: 50px;">
                  <img width="180px;" height="250px;" style="margin-top: 20px; max-width: none;" src="/upload/${relist.poster }" alt="">
                </div>
              </div>
              </div>
            <div class="col-lg-5">
              <div class="anime__details__text"
                style="margin-left: -180px; margin-top: 30px;">
                <div class="anime__details__title">
                  <h3>${relist.title }</h3>
                  <span><${relist.subtitle }</span>
                </div>
                <div class="anime__details__widget">
               <div class="row">
                    <div class="col-lg-12 col-md-12">
                      <ul>
                        <li><span>映画館</span> 유성온천 5관</li>
<%--                         <fmt:parseDate value="${view.rdate}" --%>
<%--                           var="dateValue" pattern="yyyy-MM-dd" /> --%>
                        <li><span>上映日時</span>
<%--                         <fmt:formatDate value="${dateValue}" --%>
<%--                             pattern="yyyy-MM-dd" /></li> --%>
                        <li><span>人数</span> ${relist.tkt_nums }</li>
                        <li><span>席</span> ${relist.seat_cd }</li>
                      </ul>
                    </div> <!-- 12들 -->
                    </div>
                </div>
                <div class="input__btn">
                  <input type="button" class="input__btn3" value="予約キャンセル">
                  <hr style="margin-left: -220px; width: 140%;">
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>
      </div>
    </nav>
  </div>
</div>
<%@ include file="../footer.jsp"%>
