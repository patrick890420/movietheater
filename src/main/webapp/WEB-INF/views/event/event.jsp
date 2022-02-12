<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
<div class="container">
  <div class="row">
    <div class="col-md-12 event9">
      <h2>イベント</h2><!-- EVENT -->
    </div><!-- md12 -->
    </div><!-- row -->
    <div class="row event13">
      <div class="col-md-9">
        <ol class="breadcrumb event15">
          <li>
            <a href="/ticket/ticket.do">영화 / 예매</a>
            <a href="/theater/theater.do">CGV 극장별</a>
          </li>
          <li class="event24">
            <a href="#"style="color: #e53637;">종료 이벤트</a>
          </li><!--  -->
<!--           <li><a href="#">당첨자 발표</a></li> -->
<!--           <li><a href="#">SPECIAL</a></li> -->
<!--           <li><a href="#">Membership / CLUB</a></li> -->
<!--           <li><a href="#">제휴 / 할인</a></li> -->
        </ol>
      </div><!-- md9 -->
    </div><!-- row -->
  </div><!-- container -->
</section><!-- hero -->
<!-- Hero Section End -->


<!-- search -->
<form name="myform" method="get" action="/event/event.do">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 event39">
      <select name="sel" class="select">
    <option value="title">제목</option>
    <option value="content">내용</option>
  </select>
        </div>
        <div class="col-lg-3 event45">
          <label>
          <input type="text" class="event47" placeholder="검색어를 입력해 주세요">
          <button type="button" style="background:none; border:none;">
          <span class="icon_search"></span>
          </button>
          </label>
        </div><!-- lg3 -->
    </div><!-- row -->
  </div><!-- container -->
</form>


<!-- 총 게시글 -->
<div class="col-md-3 event60">
  <p>총게시글<span>10</span>건</p>
</div><!-- md-3 -->


<!-- Product Section Begin -->
<section class="event">
  <div class="container event36">
    <div class="row">
      <div class="col-sm-6 col-md-3 event38">
        <div class="thumbnail">
          <a href="/event/eventview.do">
            <img src="/resources/img/anime/details-pic.jpg" alt="...">
              <div class="caption">
                <h3>제목</h3>
                <p>날짜</p>
              </div>
          </a>
        </div>
      </div>
              <div class="col-sm-6 col-md-3 event38">
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 event38">
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 event68">
                <a href="#" class="thumbnail">
                  <img src="/resources/img/recent/recent-6.jpg" alt="...">
                </a>
              </div>
              </div><!-- row -->
        </div><!-- container -->
        
        <div class="container">
            <div class="row">      
              <div class="col-sm-6 col-md-3 event38">
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 event38">
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 event38">
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 event68">
                <a href="#" class="thumbnail">
                  <img src="/resources/img/recent/recent-6.jpg" alt="...">
                </a>
              </div>
            </div><!-- row -->
        </div><!-- container -->
</section><!-- hero -->

<!-- 하단 배너 -->
<div class="col-md-12 event142">
  <img src="/resources/img/event.jpg" alt="..." class="img-rounded">
</div>
	

<%@ include file="../footer.jsp" %>	