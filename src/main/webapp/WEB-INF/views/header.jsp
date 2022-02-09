<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>   --%>
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
<link rel="stylesheet" href="/resources/css/movie.css" type="text/css">
<link rel="stylesheet" href="/resources/css/event_notice.css" type="text/css">
<link rel="stylesheet" href="/resources/css/ticket/ticket.css" type="text/css">
</head>

<body>
  <!-- Page Preloder -->
  <div id="preloder">
    <div class="loader"></div>
  </div>

  <!-- Header Section Begin -->
  <header class="header">
    <div class="container">
      <div class="row">
        <div class="col-lg-2">
          <div class="header__logo">
            <a href="./index.html">NEW 포스터 입력</a>
          </div>
        </div>
      </div>
      <div id="mobile-menu-wrap"></div>
    </div>
  </header>
  <!-- Header End -->
  <div class="container">
    <div class="row">
      <div class="col-lg-2">
        <div class="header__logo">
          <a href="/"> <span
            style="font-size: x-large; font-weight: 800; color: black;">📽
              JSL-Movie</span>
          </a>
        </div>
      </div>
      <div class="col-lg-10">
        <div class="header__right">
          <a href="#" style="text-align: center;"><span class="icon_lock"><br>로그인</span></a>
          <a href="" style="text-align: center;"><span
            class="icon_profile"><br>회원가입</span></a> <a href=""
            style="text-align: center;"><span class="icon_profile"><br>마이페이지</span></a>
          <a href="" style="text-align: center;"><span
            class="icon_profile"><br>고객센터</span></a>
        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
  <div class="container">
    <div class="row" style="border-top: solid 2px #eeeeee; padding:10px 0;">
      <div class="col-lg-4" style="margin-left: -15px;">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul>
              <li class="active"><a href="/movie/movie.do">영화</a></li>
              <li><a href="./categories.html">극장<span
                  class="arrow_carrot-down"></span></a>
                <ul class="dropdown">
                  <li><a href="./categories.html">Categories</a></li>
                  <li><a href="/movie/view.do">ViewPage</a></li>
                  <li><a href="./anime-watching.html">Anime Watching</a></li>
                  <li><a href="./blog-details.html">Blog Details</a></li>
                  <li><a href="./signup.html">Sign Up</a></li>
                  <li><a href="./login.html">Login</a></li>
                </ul></li>
              <li><a href="/ticket/ticket.do">예매</a></li>
              <li><a href="/event/event.do">이 벤 트</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="col-lg-5" style="text-align:right;">
      </div>
      <div class="col-lg-3" style="text-align:right;">
        <label style="margin:10px 0;">
          <input type="text">
          <button type="button" style="background:none; border:none;"><span
            class="icon_search"></span></button>
        </label>
      </div>
      
    </div>
  </div>