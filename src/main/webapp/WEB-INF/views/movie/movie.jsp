<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../header.jsp" %>
<body>
    
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>Moives Now Playing</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Order by:</p>
                                        <select>
                                            <option value="">A-Z</option>
                                            <option value="">1-10</option>
                                            <option value="">10-50</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="notice_search">
                          <form name="myform" method="get" action="movie.do" id="searchForm">
                            <div class="container-fluid product__page__filter">
                              <div class="row">
                                <div class="col-lg-12 " style="padding-right: 5px;">
                                <div class="float-lg-right" style="padding-bottom: 30px;">
                                  <select  name="searchType" class="select">
                                    <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>선택</option>
                                    <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>제목</option>
                                    <option value="intro"><c:out value="${pageMaker.cri.searchType eq 'intro'?'selected':''}"/>내용</option>
                                  </select>
                                  <label>
                                    <input type="text" class="event47" name="searchName" placeholder="검색어를 입력해 주세요">
                                    <input type="hidden" name="pageNum" value="1">
                                    <input type="hidden" name="amount" value="9">
                                    <button type="submit" style="background:none; border:none;"><i class="icon_search"></i></button>
                                    </label>
                                    </div>
                                    </div>
                              </div><!-- row -->
                            </div><!-- container -->
                          </form>
                        </div><!-- notice_search -->
                        <div class="row">
                        <c:set var="num" value="${pageMaker.total-((pageMaker.cri.pageNum-1) * 10)}"/>
                          <c:forEach var="mlist" items="${list }"  >
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" ><img src="/upload/${mlist.poster}" alt="">
                                        <div class="ep">${mlist.m_cd}</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                    </div>
                                    <div class="product__item__text">
                                        <h5><a href="view.do?m_cd=${mlist.m_cd}">${mlist.title}</a></h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <form action="movie.do" name ="pageForm" method="get">
                      <div class="product__pagination"  >
                        <hr>
                        <ul class="pagination pagination-sm" style="justify-content: center;">
                        <!-- 2. 이전페이지 활성화여부 -->
                        <c:if test="${pageMaker.prev }">
                            <li><a href="#" data-pagenum='${pageMaker.startPage - 1 }'><i class="fa fa-angle-double-left"></i></a></li>
                        </c:if>
                        <!-- 1. 페이지네이션 처리 -->
                        <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                            <li class="${pageMaker.pageNum eq num ? 'active' : ''}">
                                <a href="#" data-pagenum='${num}'>${num}</a>
                            </li>
                        </c:forEach>
                        <!-- 3. 다음버튼 활성화여부 -->
                        <c:if test="${pageMaker.next }">
                            <li><a href="#" data-pagenum='${pageMaker.endPage + 1 }'><i class="fa fa-angle-double-right"></i></a></li>
                        </c:if>
                      </ul>
                      </div>
                      <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                      <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                      <input type="hidden" name="searchType" value="${pageMaker.cri.searchType }">
                      <input type="hidden" name="searchName" value="${pageMaker.cri.searchName }">
                    </form>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="product__sidebar">
                        <div class="product__sidebar__view">
                            <div class="section-title">
                                <h5>Top Rank</h5>
                            </div>
                            <ul class="filter__controls">
                                <li class="active" data-filter="*">Day</li>
                                <li data-filter=".week">Week</li>
                                <li data-filter=".month">Month</li>
                                <li data-filter=".years">Years</li>
                            </ul>
                            <div class="filter__gallery">
                                <div class="product__sidebar__view__item set-bg mix day years"
                                data-setbg="/resources/img/sidebar/tv-1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg mix month week"
                            data-setbg="/resources/img/sidebar/tv-2.jpg">
                            <div class="ep">18 / ?</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                            <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                        </div>
                        <div class="product__sidebar__view__item set-bg mix week years"
                        data-setbg="/resources/img/sidebar/tv-3.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg mix years month"
                    data-setbg="/resources/img/sidebar/tv-4.jpg">
                    <div class="ep">18 / ?</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                    <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                </div>
                <div class="product__sidebar__view__item set-bg mix day"
                data-setbg="/resources/img/sidebar/tv-5.jpg">
                <div class="ep">18 / ?</div>
                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                <h5><a href="#">Fate stay night unlimited blade works</a></h5>
            </div>
        </div>
    </div>

</div>
</div>
</div>
</div>
</section>

<script>
//    페이지 처리
//      모든 a버튼을 눌렀을 때 a가 가지고 있는 pageNum값을 가지고 form태그로 이동하도록 처리
//      동적쿼리 이용해서 sql문 변경
//      화면에 검색키워드가 미리 남겨지도록 처리.
  var product__pagination = document.querySelector(".pagination");
  product__pagination.onclick = function() {
    event.preventDefault(); // 고유이벤트 속성 중지
    if(event.target.tagName != 'A') return;

    // 사용자가 클릭한 페이지 번호를 form에 넣고 서브밋을 보냅니다.
    document.pageForm.pageNum.value = event.target.dataset.pagenum;
    document.pageForm.submit(); // 서브밋
  }

</script>


<%@ include file ="../footer.jsp" %>