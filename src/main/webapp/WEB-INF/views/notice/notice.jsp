<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<section class="hero">
  <div class="container">
    <div class="row event8">
      <div class="col-md-12 event9">
        <h2>공지사항</h2>
      </div>
    </div>
  </div>
</section>
<!-- Section End -->

<!-- search -->
<div class="notice_search">
<form name="myform" method="get" action="notice.do" id="searchForm">
  <div class="container">
    <div class="row notice24">
      <div class="col-lg-9" style="padding-left: 790px;">
        <select name="searchType" class="select">
          <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>선택</option>
          <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>제목</option>
          <option value="content"<c:out value="${pageMaker.cri.searchType eq 'content'?'selected':''}"/>>내용</option>
        </select>
      </div>
      <div class="col-lg-3 event45">
        <label>
          <input type="text" class="event47" name="searchName" placeholder="검색어를 입력해 주세요">
<%--           <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> --%>
<%--           <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> --%>
          <input type="hidden" name="pageNum" value="1">
          <input type="hidden" name="amount" value="10">
          <button type="submit" style="background:none; border:none;">
            <span class="icon_search"></span>
          </button>
          </label>
        </div><!-- lg3 -->
    </div><!-- row -->
  </div><!-- container -->
</form>
</div><!-- notice_search -->


<!-- 총 게시글 -->
<div class="col-md-4 event60" style="max-width: 27.333333%">
  <p>총게시글&nbsp;&nbsp;<span>${pageMaker.total}</span>건</p>
</div><!-- md-3 -->


<!-- Table -->
<section class="notice">
<div class="container">
  <div class="row51">
    <div class="col-md-12 pb-5">
      <table class="table table-hover">
        <colgroup>
          <col width="10%">
          <col width="*">
          <col width="10%">
          <col width="10%">
        </colgroup>
        <tr>
          <th class="notice68">번호</th>
          <th>제목</th>
          <th class="notice68">작성일</th>
          <th class="notice68">조회수</th>
        </tr>
        
        <tbody>
          <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
          <c:forEach var="list" items="${list}">
            <tr>
              <td class="notice68">${num1}</td><!-- 번호 -->
              <td class="notice76"><a href="noticeView.do?nt_cd=${list.nt_cd}">${list.title}</a></td><!-- 제목 -->
              <td>
                <fmt:parseDate pattern="yyyy-MM-dd" var="dateString" value="${list.wdate}"/>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${dateString}"/>
              </td>
              <td class="notice68">${list.hits}</td>
            </tr>
           <c:set var="num1" value="${num1-1}"/>
         </c:forEach>
       </tbody>
     </table>
     
<!-- paging -->
<form action="notice.do" name ="pageForm" method="get">
  <div class="product__pagination">
  <hr>
    <ul class="pagination pagination-sm">
<!-- 2. 이전페이지 활성화여부 -->
      <c:if test="${pageMaker.prev}">
        <li>
          <a href="#" data-pagenum='${pageMaker.startPage - 1 }'>
            <i class="fa fa-angle-double-left"></i>
          </a>
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
          <a href="#" data-pagenum='${pageMaker.endPage + 1 }'>
            <i class="fa fa-angle-double-right"></i>
          </a>
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