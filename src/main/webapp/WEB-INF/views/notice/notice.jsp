<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
  <div class="container">
    <div class="row event8">
      <div class="col-md-12 event9"><h2>お知らせ</h2><!-- 공지 --></div>
    </div>
  </div>
</section>
<!-- Section End -->

<!-- Table -->
<section class="notice">
<div class="container">
  <div class="row">
  <div class="col-md-6">
    <p style="font-weight:600;">銃の掲示板&nbsp;&nbsp;<span>${pageMaker.total}</span>件</p>
  </div>
  
<!-- search -->
<div class="col-md-6">
  <form name="myform" method="get" action="notice.do" id="searchForm"style="float:right;">
    <select name="searchType" class="select">
      <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>選択</option><!-- 선택 -->
      <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>題目</option><!-- 제목 -->
      <option value="content"<c:out value="${pageMaker.cri.searchType eq 'content'?'selected':''}"/>>内容</option><!-- 내용 -->
    </select>
    <label>
      <input type="text" class="event47" name="searchName" placeholder="検索語 入力 "style="border: groove; text-align:center;"><!-- 검색어 입력 -->
<%--           <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> --%>
<%--           <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> --%>
      <input type="hidden" name="pageNum" value="1">
      <input type="hidden" name="amount" value="10">
      <button type="submit" style="background:none; border:none;">
        <span class="icon_search"></span>
       </button>
    </label>
  </form>
</div><!-- col-md-6 -->

<div class="col-md-12 pb-5">
  <table class="table table-hover" id="NoticeTable" style="margin-bottom:0">
    <colgroup>
      <col width="6%">
      <col width="*">
      <col width="10%">
      <col width="11%">
      <col width="7%">
    </colgroup>
    <tr>
      <th>番号</th><!-- 번호 -->
      <th class="notice68">題目</th><!-- 제목 -->
      <th>管理者</th><!-- 관리자 -->
      <th class="notice68">作成日</th><!-- 작성일 -->
      <th>照会数</th><!-- 조회수 -->
    </tr>
    <tbody>
      <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
      <c:forEach var="nlist" items="${nlist}">
      <tr>
        <td>${num1}</td><!-- 번호 -->
        <td class="notice85"><a href="noticeView.do?nt_cd=${nlist.nt_cd}">${nlist.title}</a></td><!-- 제목 -->
        <td>管理者</td><!-- 관리자 -->
        <td>
          <fmt:parseDate pattern="yyyy-MM-dd" var="dateString" value="${nlist.wdate}"/>
          <fmt:formatDate pattern="yyyy-MM-dd" value="${dateString}"/>
        </td>
        <td class="notice68">${nlist.hits}</td>
      </tr>
    <c:set var="num1" value="${num1-1}"/>
    </c:forEach>
  </tbody>
</table>

<!-- paging -->
<form action="notice.do" name ="pageForm" method="get">
  <div class="product__pagination" style="border-top:solid 3px #80808036;">
    <ul class="pagination pagination-sm">
<!-- 2. 이전페이지 활성화여부 -->
      <c:if test="${pageMaker.prev}">
      <li>
        <a href="#" data-pagenum='${pageMaker.startPage - 1 }'><i class="fa fa-angle-double-left"></i></a>
      </li>
      </c:if>
<!-- 1. 페이지네이션 처리 -->
      <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
      <li class="${pageMaker.pageNum eq num ? 'active' : ''}">
        <a href="#" data-pagenum='${num}'>${num}</a>
      </li>
      </c:forEach>
<!-- 3. 다음버튼 활성화여부 -->
      <c:if test="${pageMaker.next }">
      <li>
        <a href="#" data-pagenum='${pageMaker.endPage + 1 }'><i class="fa fa-angle-double-right"></i></a>
      </li>
      </c:if>
    </ul>
  </div>
  <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
  <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
  <input type="hidden" name="searchType" value="${pageMaker.cri.searchType }">
  <input type="hidden" name="searchName" value="${pageMaker.cri.searchName }">
</form>
</div><!-- md-12 -->
</div><!-- row -->
</div><!-- container -->
</section>

<script>
//    페이지 처리
//      모든 a버튼을 눌렀을 때 a가 가지고 있는 pageNum값을 가지고 form태그로 이동하도록 처리
//      동적쿼리 이용해서 sql문 변경
//      화면에 검색키워드가 미리 남겨지도록 처리.
  var pagination = document.querySelector(".pagination");
  pagination.onclick = function() {
    event.preventDefault(); // 고유이벤트 속성 중지
    if(event.target.tagName != 'A') return;

    // 사용자가 클릭한 페이지 번호를 form에 넣고 서브밋을 보냅니다.
    document.pageForm.pageNum.value = event.target.dataset.pagenum;
    document.pageForm.submit(); // 서브밋
  }

</script>
<%@ include file="../footer.jsp" %>
