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
                                        <h5><a href="view.do?m_cd=${mlsit.m_cd}&pageNum=${pageMaker.cri.pageNum}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword }&amount=${pageMaker.cri.amount}">${mlist.title}</a></h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="product__pagination" style="text-align: center;">
                      <c:if test="${pageMaker.prev}">
                        <a href="${pageMaker.startPage-1 }"><i class="bi bi-arrow-left"></i></a>
                        </c:if>
                        <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage }">
                        <a href="${num}" class="${pageMaker.cri.pageNum == num? 'active':'' }">${num }</a>
                        </c:forEach>
                        <c:if test="${pageMaker.next}">
                        <a href="${pageMaker.startPage+1 }"><i class="bi bi-arrow-right"></i></a>
                        </c:if>
                    </div>
                </div>
                <form id="actionForm" action="movie.do" method="get">
                  <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                  <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                  <input type="hidden" name="sel" value="${pageMaker.cri.type }">
                  <input type="hidden" name="word" value="${pageMaker.cri.keyword }">
              </form>
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
var actionForm = $("#actionForm");
$(".product__pagination > a").on("click", function(e) {
   e.preventDefault();
   actionForm.find("input[name='pageNum']").val($(this).attr("href"));
   actionForm.submit();
   
})
</script>



<%@ include file ="../footer.jsp" %>