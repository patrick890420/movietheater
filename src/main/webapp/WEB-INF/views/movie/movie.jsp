<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../header.jsp" %>
<body>
    
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>Moives Now Playing</h4>
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
                                    <option value=""<c:out value="${pageMaker.cri.searchType==null?'selected':''}"/>>選択</option>
                                    <option value="title"<c:out value="${pageMaker.cri.searchType eq 'title'?'selected':''}"/>>題目</option>
                                    <option value="intro"<c:out value="${pageMaker.cri.searchType eq 'intro'?'selected':''}"/>>内容</option><!-- 내용 -->
                                  </select>
                                  <label>
                                    <input type="text" style="border:groove; border-radius: 4px;" class="event47" name="searchName" placeholder="検索語 入力 ">
                                    <input type="hidden" name="pageNum" value="1">
                                    <input type="hidden" name="amount" value="12">
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
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="product__item">
                                  <div style="height:44px; padding-right: 33px;">
                                    <div style="COLOR:WHITE; TEXT-ALIGN:CENTER; padding:6px; BACKGROUND-IMAGE: linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87)); ">No.${mlist.m_cd}</div>
                                  </div>
                                    <div class="product__item__pic set-bg" >
                                        <c:if test="${mlist.rate==99 }">
                                          <div class="t_ep0" style="position:absolute;">G</div>
                                        </c:if>
                                        <c:if test="${mlist.rate==12 }">
                                          <div class="t_ep12" style="position:absolute;">PG12</div>
                                        </c:if>
                                        <c:if test="${mlist.rate==15 }">
                                          <div class="t_ep15" style="position:absolute;">R15+</div>
                                        </c:if>
                                        <c:if test="${mlist.rate==19 }">
                                          <div class="t_ep19" style="position:absolute;">R18+</div>
                                        </c:if>
                                       <a href="view.do?m_cd=${mlist.m_cd}"><img style="height:100%; width:230px; height: 325px; border-radius:4px" src="/upload/${mlist.poster}" alt=""></a>
                                   </div>
                                   
                                    <div class="product__item__text" >
                                        <h5 ><a style="color:black;" href="view.do?m_cd=${mlist.m_cd}">${mlist.title}</a>&ensp;<span style="font-size:12px; color: gray; font-weight: 600;"></span></h5>
                                        <fmt:parseDate value="${mlist.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                        <h5><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/><strong> 公開</strong></h5>
                                        <button onclick="location.href='/ticket/ticket.do'" class="btn" style="background-image :linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87));  margin: 10px 0;"><span style="color:white; font-weight:600;">予約</span></button>
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