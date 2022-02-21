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

<!-- search -->
<form name="myform" method="get" action="event.do" id="searchForm">
  <div class="container">
    <div class="row">
      <div class="col-lg-9" style="padding-left: 800px;">
      <select name="searchType" class="select">
        <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>選択</option><!-- 선택 -->
        <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>題目</option><!-- 제목 -->
        <option value="content"<c:out value="${pageMaker.cri.searchType eq 'content'?'selected':''}"/>>内容</option><!-- 내용 -->
      </select>
      </div>
      <div class="col-lg-3 event45">
        <label>
        <input type="text" class="event47" placeholder="検索語 入力 "><!-- 검색어 입력 -->
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
<div class="col-md-12 event64">
  <p>銃の掲示板&nbsp;&nbsp;<span>${pageMaker.total}</span>件</p>
<!-- 총 게시글                                                                                         건-->
</div><!-- col-md-12 -->


<!-- Product Section Begin -->
<section class="event">
  <div class="container event36">
    <div class="row">
      <div class="col-sm-6 col-md-3 event68">
        <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
          <p>No.&nbsp;<span>${num1}</span></p>
        <c:set var="num1" value="${num1-1}"/>
        <c:forEach var="elist" items="${elist}">
        
        <div class="thumbnail">
          <a href="eventView.do?event_cd=${elist.event_cd}">
          <img src="/upload/${elist.e.img}" alt="...">
          
          <div class="caption">
            <h3>${elist.title}</h3><!-- 제목 -->
            <p>${elist.sdate} ~ ${elist.fdate}</p><!-- 기간 -->
          </div>
          </a>
        </div>
        </c:forEach>
      </div><!-- col-sm-6 -->
              <div class="col-sm-6 col-md-3 event68">
                <div class="thumbnail">
                <a href="eventView.do">
                  <img src="/resources/img/anime/details-pic.jpg" alt="...">
                  <div class="caption">
                    <h3>題目</h3><!-- 제목 -->
                    <p>基幹</p><!-- 기간 -->
                    </a>
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