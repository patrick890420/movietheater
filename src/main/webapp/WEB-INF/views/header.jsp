<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Movie Theater</title>


<!-- Google Font -->
<link
  href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
  rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/resources/css/plyr.css" type="text/css">
<link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/style.css" type="text/css">
<link rel="stylesheet" href="/resources/css/movie/movie.css" type="text/css">
<link rel="stylesheet" href="/resources/css/event_notice/event_notice.css" type="text/css">
<link rel="stylesheet" href="/resources/css/theater/theater.css" type="text/css">
<link rel="stylesheet" href="/resources/css/member/member.css" type="text/css">
<link rel="stylesheet" href="/resources/css/ticket/ticket.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 위에 부트스트랩 있는데 누가 또 부트스트랩 말도 없이 링크 걸어놈 자수하면 살려줌 -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
<!-- 확인중 -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<!-- 확인구간 -->

<!-- 차트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<script language = "javascript">
  var imgArray = new Array();
  imgArray[0] = '/resources/img/theater/post1.jpg';
  imgArray[1] = '/resources/img/theater/post3.jpg';
  var imgArray2 = new Array();
  imgArray2[0] = '/resources/img/theater/footpost1.jpg';
  imgArray2[1] = '/resources/img/theater/footpost2.jpg';
  
  function showImage(){
    var imgNum = Math.round(Math.random()*1);
    var objImg = document.getElementById("introImg");
    objImg.src = imgArray[imgNum];
    var imgNum2 = Math.round(Math.random()*1);
    var objImg2 = document.getElementById("introImg2");
    objImg2.src = imgArray2[imgNum2];
  }
</script>
</head>
<body onload="showImage()">
  <!-- Page Preloder -->
  <div id="preloder">
    <div class="loader"></div>
  </div>

  <!-- Header Section Begin -->
  <header class="header" style="background:black;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="">
            <a href="./index.html">
            <img id = "introImg" border="0">
            </a>
          </div>
        </div>
      </div>
      <div id="mobile-menu-wrap"></div>
    </div>
  </header>
  <!-- Header End -->
  <div class="container" style="height: 82px;">
    <div class="row">
          <div class="col-lg-4">
        <div class="header__left">
          <a href="/login/login.do" style="text-align: center;"><span class="icon_lock">페이스북</span></a>
          <a href="/join/join.do" style="text-align: center;"><span class="icon_profile">유튜브</span></a>
          <a href="/mypage/memberUp" style="text-align: center;"> <span class="icon_profile">인스타그램</span></a>
          <a href="" style="text-align: center;"><span class="icon_profile">트위터</span></a>
        </div>
      </div>
      <div class="col-lg-4" style="padding-top:13px;">
        <div class="header__logo" style="text-align:center;">
          <a href="/"> 
            <span
            style="font-size: x-large; font-weight: 800; color: black;">📽
              JSL-CINEMA</span>
          </a>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="header__right">
          <sec:authorize access="isAnonymous()">
            <a href="/login/login.do" style="text-align: center;"><span class="icon_lock_alt"><br>로그인</span></a>
            <a href="/join/join.do" style="text-align: center;"><span class="icon_contacts_alt"><br>회원가입</span></a>
          </sec:authorize>
          
          <sec:authorize access="isAuthenticated()">
            <!-- <a href="/login/logout.do" style="text-align: center;"><span class="icon_lock"><br>로그아웃</span></a> -->
              <form name="lg" action="/adm/adminLogout" method="post"><!-- spring security 로그아웃은 get 불가 -->
                     
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                <a href="/mypage/memberUp.do" style="text-align: center;"> <span class="icon_pencil-edit"><br>마이페이지</span></a>
                               
                <button type="submit" style="border:0 none; background:transparent; top: -24px; right: 10px; position: relative;" ><span class="icon_lock-open_alt"><br>로그아웃</span></button> 

                <a href="" style="text-align: center;"><span class="icon_chat_alt"><br>고객센터</span></a>
               
              </form>
          </sec:authorize>
        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
  <div class="container">
    <div class="row" style="border-top: solid 2px #eeeeee; padding:10px 0; border-bottom: solid 2px #eeeeee;">
      <div class="col-lg-9" style="margin-left: -15px;">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul class="index_navtab">
              <li><a href="/movie/movie.do">映画</a></li>
              <li><a href="/theater/theater.do">극장<span class="arrow_carrot-down"></span></a>
                <ul class="dropdown">
                  <li><a href="">JSL-Movie극장</a></li>
                  <li><a href="">특별관</a></li>
                </ul></li>
              <li><a href="/ticket/ticket.do">前売</a></li>
              <li><a href="/event/event.do">イベント</a></li><!-- EVENT -->
              <li><a href="/notice/notice.do">お知らせ</a></li><!-- 공지 -->
            </ul>
          </nav>
        </div>
      </div>
      <div class="col-lg-3" style="text-align:right; padding:0 !important;">
        <label style="margin:10px 0;">
          <input type="text" style="border:groove;">
          <button type="button" style="background:none; border:none;"><span
            class="icon_search"></span></button>
        </label>
      </div>
      
    </div>
  </div>