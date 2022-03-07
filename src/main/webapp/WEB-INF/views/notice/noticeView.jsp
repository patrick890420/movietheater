<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section class="hero">
  <div class="container">
    <div class="row event8">
      <div class="col-md-12 event9">
        <h2>お知らせ</h2><!-- 공지 -->
      </div>
    </div>
  </div><!-- container -->
  <div class="container" style="background:#80808036;">
    <div class="col-md-12">
      <div style="padding:10px 0;">
        <span style="font-weight:600;">${nview.title}</span>
        <span style="float:right;">${nview.wdate}&nbsp;<i class="fa fa-eye"></i>&nbsp;${nview.hits}</span>
      </div>
    </div>   
  </div>
</section>
<!-- Section End -->

<!-- View -->
<section class="view">
  <div class="container">
    <div class="row">
      <div class="col-md-12 viewrow viewbg" style="border-top: solid 1px darkgray;">
        <input type="hidden" class="hdBno" value="${nview.nt_cd}">
          <div>${nview.content}</div>
      </div><!-- col-md-12 -->

      <div class="col-md-12" style="background:#80808036; border-top: gray 1px solid; border-bottom: gray 1px solid;">

<!-- 이전 -->
      <div class=""style="padding:5px;">
        <c:if test="${prev !=null}">
        <a href="noticeView.do?nt_cd=${prev.nt_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
           class="btn"><i class="fa fa-angle-left"></i>
          <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary"style="margin-left: 20px;">${prev.title}</span>
        </a>
        </c:if>
        <c:if test="${prev ==null}">
        <a href="javascript:void(0)" class="btn"><i class="fa fa-angle-left"></i>
          <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary"style="margin-left: 20px;">ListPage</span>
        </a>
        </c:if>

<!-- 다음 -->
        <c:if test="${next !=null}">
          <a href="noticeView.do?nt_cd=${next.nt_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
            class="btn pull-right">
            <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary"style="margin-right: 20px;">${next.title}</span>
            <i class="fa fa-angle-right"></i>
          </a>
        </c:if>
        <c:if test="${next ==null}">
          <a href="javascript:void(0)"  class="btn pull-right">
            <span class="btn waves-effect waves-light btn-rounded btn-outline-secondary"style="margin-right: 20px;">ListPage</span>
            <i class="fa fa-angle-right"></i>
          </a>
        </c:if>
       </div><!-- "" -->
      </div><!-- col-md-12 -->

<!-- button -->
          <div class="col-md-12">
            <div class="button">
              <button type="button" class="btn waves-effect waves-light btn-rounded btn-outline-secondary" onclick="location.href='notice.do'">
                <i class="fa fa-list"></i>&nbsp;リスト<!-- 리스트(목록) -->
              </button>
            </div><!-- button -->
          </div><!-- col-md-12 -->
        </div><!-- row -->
      </div><!-- container -->
</section>

<%@ include file="../footer.jsp" %>
