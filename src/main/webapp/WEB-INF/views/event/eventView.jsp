<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero eventview6">
<div class="container">
  <div class="row event8">
    <div class="col-md-12 event9">
      <h2>イベント</h2><!-- EVENT -->
    </div><!-- md12 -->
    </div><!-- row -->
    <div class="row event13">
      <div class="col-md-12">
        <ol class="breadcrumb15">
          <li>
            <a href="/ticket/ticket.do">映画 / 前売り</a><!-- 영화 / 예매 -->
            <a href="/theater/theater.do">CGV 劇場別</a><!-- CGV 극장별 -->
          </li>
        </ol>
      </div><!-- md9 -->
    </div><!-- row -->
  </div><!-- container -->
</section><!-- hero -->
<!-- Hero Section End -->

<!-- View -->
<section class="view">
  <div class="container">
    <div class="row eventview30">
      <div class="col-md-12 viewrow viewbg">
        <h2>${eview.title}</h2>
          <p> | ${eview.wdate} |&nbsp;<i class="fa fa-eye"></i>&nbsp;${eview.hits}</p>
          
          <input type="hidden" class="hdBno" value="${eview.event_cd}">
          
            <div>${eview.content}</div>
          
<!-- 이전 -->
          <div class="">
            <c:if test="${prev !=null}">
            <a href="eventView.do?nt_cd=${prev.event_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
              class="btn"><i class="fa fa-angle-left"></i>
              <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary">${prev.title}</span>
            </a>
            </c:if>
            <c:if test="${prev ==null}">
            <a href="javascript:void(0)" class="btn"><i class="fa fa-angle-left"></i>
              <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary">ListPage</span>
            </a>
            </c:if>
<!-- 다음 -->
            <c:if test="${next !=null}">
            <a href="eventView.do?nt_cd=${next.event_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
              class="btn pull-right">
              <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary">${next.title}</span>
                <i class="fa fa-angle-right"></i>
            </a>
            </c:if>
            <c:if test="${next ==null}">
            <a href="javascript:void(0)"  class="btn pull-right">
              <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary">ListPage</span>
                <i class="fa fa-angle-right"></i>
            </a>
            </c:if>
          </div><!-- "" -->
          
<!-- button -->
          <div class="button">
            <button type="button" class="btn waves-effect waves-light btn-rounded btn-outline-secondary" onclick="location.href='event.do'">
              <i class="fa fa-list"></i>&nbsp;リスト<!-- 리스트(목록) -->
            </button>
          </div><!-- button -->
          
      </div><!-- col-md-12 -->
    </div><!-- row -->
  </div><!-- container -->
</section>

<%@ include file="../footer.jsp" %>	