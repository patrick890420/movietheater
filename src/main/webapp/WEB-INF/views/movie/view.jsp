<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg"><img style="height:420px;" src="/upload/${view.poster}" alt="">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${view.title }</h3>
                                <span>${view.subtitle }</span>
                            </div>
                            <div class="anime__details__rating">
                            <fieldset class="rating">
                                <input type="radio" id="star5" name="rating" value="5" onclick="return(false);" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                                <input type="radio" id="star4half" name="rating" value="4 and a half" onclick="return(false);"/><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                <input type="radio" id="star4" name="rating" value="4" onclick="return(false);"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                                <input type="radio" id="star3half" name="rating" value="3 and a half" onclick="return(false);" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                <input type="radio" id="star3" name="rating" value="3" onclick="return(false);"/><label class = "full" for="star3" title="Meh - 3 stars"></label>
                                <input type="radio" id="star2half" name="rating" value="2 and a half" onclick="return(false);"/><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                <input type="radio" id="star2" name="rating" value="2" onclick="return(false);"/><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                                <input type="radio" id="star1half" name="rating" value="1 and a half" onclick="return(false);"/><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                <input type="radio" id="star1" name="rating" value="1" onclick="return(false);"/><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                                <input type="radio" id="starhalf" name="rating" value="half" onclick="return(false);"/><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                            </fieldset>
                                <span>${avg.reviewcount }명 투표 함!</span>
                            </div>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>장르</span>${info.g_name }</li>
                                            <fmt:parseDate value="${view.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                            <li><span>개봉일</span><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></li>
                                            <li><span>감독</span>${info.d_name}</li>
                                            <li><span>배우</span>${info.a_name }</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>평점</span>${avg.reviewavg } 점</li>
                                            <li><span>Status:</span>상영 상태</li>
                                            <li><span>상영 시간</span>${view.rtime } 분</li>
                                            <li><span>상영 등급</span> ${view.rate }세 이용가</li>
                                        </ul>
                                    </div>
                                    <p>${view.intro }</p>
                                </div>
                            </div>
                            <div class="anime__details__btn mv-txt-center">
                                <a href="#" class="watch-btn btn btn-primary"><span>Watch Now</span></a>
<!--                                 <a><i class="fa fa-angle-right"></i></a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row register">
                    <div class="col-lg-12 col-md-12">
                      <form name="movieReviewInsert" action="movieReviewInsert.do" method="post">
                        <input type="hidden" value="${view.m_cd}" name="m_cd">
                        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                            <c:forEach items="${review}" var="review" begin="0" end="7">
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="/resources/img/anime/review-1.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>${review.rwriter }<span>${review.rdate}</span></h6>
                                    <div>
                                    <span>${review.review }</span>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        <sec:authorize access="isAuthenticated()">
                        <div class="anime__details__form">
                          <div class="section-title">
                                <h5>Your Comment</h5>
                              <div class="test">
                             
                              <fieldset class="rating1">
                                <input type="radio" id="star5.1" name="rgrade" value="5" /><label class = "full" for="star5.1" title="Awesome - 5 stars"></label>
                                <input type="radio" id="star4.1half" name="rgrade" value="4.5" /><label class="half" for="star4.1half" title="Pretty good - 4.5 stars"></label>
                                <input type="radio" id="star4.1" name="rgrade" value="4" /><label class = "full" for="star4.1" title="Pretty good - 4 stars"></label>
                                <input type="radio" id="star3.1half" name="rgrade" value="3.5" /><label class="half" for="star3.1half" title="Meh - 3.5 stars"></label>
                                <input type="radio" id="star3.1" name="rgrade" value="3" /><label class = "full" for="star3.1" title="Meh - 3 stars"></label>
                                <input type="radio" id="star2.1half" name="rgrade" value="2.5" /><label class="half" for="star2.1half" title="Kinda bad - 2.5 stars"></label>
                                <input type="radio" id="star2.1" name="rgrade" value="2" /><label class = "full" for="star2.1" title="Kinda bad - 2 stars"></label>
                                <input type="radio" id="star1.1half" name="rgrade" value="1.5" /><label class="half" for="star1.1half" title="Meh - 1.5 stars"></label>
                                <input type="radio" id="star1.1" name="rgrade" value="1" /><label class = "full" for="star1.1" title="Sucks big time - 1 star"></label>
                                <input type="radio" id="starhalf.1" name="rgrade" value="0.5" /><label class="half" for="starhalf.1" title="Sucks big time - 0.5 stars"></label>
                            </fieldset>
                            </div>
                            </div>
                            <sec:authorize access="isAuthenticated()">
                            <input type="hidden" name="rwriter" value="<sec:authentication property="principal.member.userid"/>" >
                            </sec:authorize>
                             <textarea class="cmt-border"  name="review" placeholder="Your Comment"></textarea>
                                <button class="btn btn-primary fa fa-location-arrow register finish" type="submit"> Review</button>
                        </div>
                        </sec:authorize>
                        </form>
                    </div>
                    <div class="col-lg-12 col-md-12 pt-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>스틸 컷</h5>
                            </div>
                            <div class="row">
                            <div class="col-lg-3 col-md-3">
                              <div class="product__sidebar__view__item set-bg" data-setbg="/upload/${cut.still_img1}">
                              </div>
                            </div>
                            <div class="col-lg-3 col-md-3">
                              <div class="product__sidebar__view__item set-bg" data-setbg="/upload/${cut.still_img2}">
                              </div>
                            </div>
                            <div class="col-lg-3 col-md-3">
                              <div class="product__sidebar__view__item set-bg" data-setbg="/upload/${cut.still_img3}">
                              </div>
                            </div>
                            <div class="col-lg-3 col-md-3">
                              <div class="product__sidebar__view__item set-bg" data-setbg="/upload/${cut.still_img4}">
                              </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        

<script type="text/javascript" src="/resources/js/movie/review.js"></script>
<script >
 $(function(){ 
    <c:set var="a" value="${a}"/>
    <c:set var="b" value="${b}"/>
    <c:set var="c" value="${c}"/>
	 
   <c:forEach varStatus="i" begin="0" end="${a}" step="1">
     $('#star${i.current}').prop('checked', true);
       <c:if test="${i.last && c ne 0}" >
          $('#star${i.current}half').prop('checked', true);
           </c:if>
        </c:forEach>
 });
</script> 

<%@ include file = "../footer.jsp" %>
