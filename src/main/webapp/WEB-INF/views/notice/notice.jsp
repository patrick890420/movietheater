<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
<div class="container">
  <div class="row event8">
    <div class="col-md-12 event9">
      <h2>공지사항</h2><!-- 공지사항 -->
    </div><!-- md12 -->
  </div><!-- row -->
    <div class="row ">
      
    </div><!-- row -->
  </div><!-- container -->
</section><!-- hero -->
<!-- Hero Section End -->


<!-- search -->
<form name="myform" method="get" action="/notice/notice.do">
  <div class="container">
    <div class="row notice24">
      <div class="col-lg-9 event39">
      <select name="sel" class="select">
    <option value="title">제목</option>
    <option value="content">내용</option>
  </select>
        </div>
        <div class="col-lg-3 event45">
          <label style="margin-bottom: 1.5rem;">
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


<!-- Table -->
<section class="notice">
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <table class="table table-hover">
        <colgroup>
          <col width="10%">
          <col width="*">
          <col width="10%">
<!--           <col width="10%"> -->
          <col width="10%">
          <col width="10%">
        </colgroup>
        <tr>
          <th>番号</th><!-- 번호 -->
          <th>題目</th><!-- 제목 -->
          <th>イメージ</th><!-- 이미지 -->
<!--           <th>内容</th>내용 -->
          <th>作成日</th><!-- 작성일 -->
          <th>照会数</th><!-- 조회수 -->
        </tr>
        <tr>
          <td>번호</td>
          <td><a href="#"></a>제목</td>
          <td>이미지</td>
<!--           <td>내용</td> -->
          <td>작성일</td>
          <td>조회수</td>
        </tr>
      </table>
    </div><!-- md-12 -->
  </div><!-- row -->
</div><!-- container -->
</section><!-- hero -->
	

<%@ include file="../footer.jsp" %>	