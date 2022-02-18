<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
<div class="container">
  <div class="row">
    <div class="col-md-12 event9">
      <h2>EVENT</h2><!-- EVENT -->
    </div><!-- md12 -->
    </div><!-- row -->
    <div class="row event13">
      <div class="col-md-12">
        <ol class="breadcrumb15">
          <li>
            <a href="/ticket/ticket.do">영화 / 예매</a><!-- 영화 / 예매 -->
            <a href="/theater/theater.do">CGV 극장별</a><!-- CGV 극장별 -->
          </li>
          <li class="event24">
            <a href="#"style="color: #e53637;">종료 이벤트</a><!-- 종료 이벤트 -->
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
<form name="myform" method="get" action="event.do" id="searchForm">
  <div class="container">
    <div class="row">
      <div class="col-lg-9" style="padding-left: 790px;">
      <select name="searchType" class="select">
        <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>선택</option>
          <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>제목</option>
          <option value="content"<c:out value="${pageMaker.cri.searchType eq 'content'?'selected':''}"/>>내용</option>
      </select>
        </div>
        <div class="col-lg-3 event45">
          <label>
          <input type="text" class="event47" placeholder="검색어를 입력해 주세요">
<%--           <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> --%>
<%--           <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> --%>
          <input type="hidden" name="pageNum" value="1">
          <input type="hidden" name="amount" value="10">
          <button type="button" style="background:none; border:none;">
          <span class="icon_search"></span>
          </button>
          </label>
        </div><!-- lg3 -->
    </div><!-- row -->
  </div><!-- container -->
</form>


<!-- 총 게시글 -->
<div class="col-md-4 event60" style="max-width: 27.333333%">
  <p>총게시글&nbsp;&nbsp;<span>${pageMaker.total}</span>건</p>
</div><!-- md-3 -->


<!-- Product Section Begin -->
<section class="event">
  <div class="container event36">
    <div class="row">
      <div class="col-sm-6 col-md-3 event68">
        <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
        <p>No.&nbsp;<span>${num1}</span></p>
       <c:set var="num1" value="${num1-1}"/>
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
              <div class="col-sm-6 col-md-3 event68">
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
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                  <img src="/resources/img/recent/recent-6.jpg" alt="...">
                </a>
              </div>
              </div><!-- row -->
        </div><!-- container -->
        
        <div class="container">
            <div class="row">      
              <div class="col-sm-6 col-md-3 event68">
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
                <div class="thumbnail">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                  <img src="/resources/img/recent/recent-6.jpg" alt="...">
                </a>
              </div>
            </div><!-- row -->
        </div><!-- container -->

<!-- paging -->
<form action="notice.do" name ="pageForm" method="get">
  <div class="product__pagination">
  <hr>
      <ul class="pagination pagination-sm">
<!-- 2. 이전페이지 활성화여부 -->
        <c:if test="${pageMaker.prev }">
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
</section><!-- hero -->

<!-- 하단 배너 -->
<div class="col-md-12 event142">
  <img src="/resources/img/event.jpg" alt="..." class="img-rounded">
</div>

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