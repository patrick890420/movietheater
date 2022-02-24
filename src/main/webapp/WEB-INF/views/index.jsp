<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
   <!-- Hero Section Begin -->
   <section class="hero" style="background:#000000eb; border-top:solid 3px red;">
      <div class="">

            <div class="hero__items set-bg" style="margin:0 auto; max-width:1155px; text-align:center;">
       <video autoplay="" muted="" style="width:100%;">
        <source src="https://adimg.cgv.co.kr/images/202202/Nightmare/Nightmare_1080x608_0214.mp4" type="video/mp4">
       </video>
         </div>
      </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8">
              </div>
            </div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <c:forEach items="${mlist1}" var="mlist1">
      <div class="index_mpost">
                <div class="product__item">
                  <div class="product__item__pic set-bg">
                    <c:if test="${mlist1.rate==99 }">
                      <div class="t_ep0" style="position: relative !important; top: 45px; left: 5px;">전체</div>
                    </c:if>
                    <c:if test="${mlist1.rate==12 }">
                      <div class="t_ep12" style="position: relative !important; top: 45px; left: 5px;">12</div>
                    </c:if>
                    <c:if test="${mlist1.rate==15 }">
                      <div class="t_ep15" style="position: relative !important; top: 45px; left: 5px;">15</div>
                    </c:if>
                    <c:if test="${mlist1.rate==19 }">
                      <div class="t_ep19" style="position: relative !important; top: 45px; left: 5px;">19</div>
                    </c:if>
                    <a href="view.do?m_cd=${mlist1.m_cd}"><img style="height:100%; border-radius:4px" src="/upload/${mlist1.poster}" alt=""></a>
                    </div>
                  </div>
                  <div class="product__item__text">
                     <h5 ><a style="color:white;" href="view.do?m_cd=${mlist1.m_cd}">${mlist1.title}</a>&ensp;<span style="font-size:12px; color: gray; font-weight: 600;"></span></h5>
                  </div>
                </div>
                </c:forEach>
                 </div>
              
      
    <div class="carousel-item">
    <c:forEach items="${mlist2}" var="mlist2">
      <div class="index_mpost">
                <div class="product__item">
                  <div class="product__item__pic set-bg">
                   <c:if test="${mlist2.rate==99 }">
                      <div class="t_ep0" style="position: relative !important; top: 45px; left: 5px;">전체</div>
                    </c:if>
                    <c:if test="${mlist2.rate==12 }">
                      <div class="t_ep12" style="position: relative !important; top: 45px; left: 5px;">12</div>
                    </c:if>
                    <c:if test="${mlist2.rate==15 }">
                      <div class="t_ep15" style="position: relative !important; top: 45px; left: 5px;">15</div>
                    </c:if>
                    <c:if test="${mlist2.rate==19 }">
                      <div class="t_ep19" style="position: relative !important; top: 45px; left: 5px;">19</div>
                    </c:if>
                    <a href="view.do?m_cd=${mlist2.m_cd}"><img style="height:100%; border-radius:4px" src="/upload/${mlist2.poster}" alt=""></a>
                    
                  </div>
                   <div class="product__item__text">
                     <h5 ><a style="color:white;" href="view.do?m_cd=${mlist2.m_cd}">${mlist2.title}</a>&ensp;<span style="font-size:12px; color: gray; font-weight: 600;"></span></h5>
                  </div>
                </div>
              </div>
              </c:forEach>
    </div>

    <div class="carousel-item">
    <c:forEach items="${mlist3}" var="mlist3">
      <div class="index_mpost">
                <div class="product__item">
                  <div class="product__item__pic set-bg">
                   <c:if test="${mlist3.rate==99 }">
                      <div class="t_ep0" style="position: relative !important; top: 45px; left: 5px;">전체</div>
                    </c:if>
                    <c:if test="${mlist3.rate==12 }">
                      <div class="t_ep12" style="position: relative !important; top: 45px; left: 5px;">12</div>
                    </c:if>
                    <c:if test="${mlist3.rate==15 }">
                      <div class="t_ep15" style="position: relative !important; top: 45px; left: 5px;">15</div>
                    </c:if>
                    <c:if test="${mlist3.rate==19 }">
                      <div class="t_ep19" style="position: relative !important; top: 45px; left: 5px;">19</div>
                    </c:if>
                     <a href="view.do?m_cd=${mlist3.m_cd}"><img style="height:100%; border-radius:4px" src="/upload/${mlist3.poster}" alt=""></a>
                  </div>
                   <div class="product__item__text">
                     <h5 ><a style="color:white;" href="view.do?m_cd=${mlist3.m_cd}">${mlist3.title}</a>&ensp;<span style="font-size:12px; color: gray; font-weight: 600;"></span></h5>
                  </div>
                </div>
                
              </div>
              </c:forEach>
    </div>
         
   
             
            
              
    </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="width:2%;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="width:2%;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  </div>
          </div>
        </div>
      </div>
     </div>
   </section>
   <!-- Hero Section End -->
  <div id='btnTop' class="page-up">
      <a class="index_scbt2" href="/ticket/ticket.do">
      <span class="T_button">예매하기</span></a>
      <a class="index_scbt1" href="#">
      <span class="T_button" style="position:initial;">▲</span></a>
   </div>
   <!-- Product Section Begin -->
     <section class="" style="padding-top:80px; padding-bottom:0px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="trending__product">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="section-title">
                  <h4 style="float:left;">Event</h4>
                    <span style="font-size:24px; color:#808080ab; line-height:24px;"> ㅣSpecial</span>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="btn__all">
                  <a href="/event/event.do" class="primary-btn">View All <span
                    class="arrow_right"></span></a>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event1.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                      <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event2.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                  <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event3.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                  <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event3.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                  <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event3.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                  <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/event3.jpg" style="height:300px;">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                  <div class="product__item__text">
                  <strong>[킹메이커]CGV필름마크</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              
              
            </div>
          </div>
        </div>
      </div>
     </div>
     </section>
     <section class="" style="padding-bottom:0px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="trending__product">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="section-title">
                  <h4 style="float:left;">극장</h4>
                    <span style="font-size:24px; color:#808080ab; line-height:24px;"> ㅣSpecial</span>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="btn__all">
                  <a href="/theater/theater.do" class="primary-btn">View All <span
                    class="arrow_right"></span></a>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-7 col-md-7 col-sm-7">
                <div class="product__item">
                  <div class="product__item__pic set-bg"
                    data-setbg="/resources/img/trending/theater1.png">
                    <div class="ep">18 / 18</div>
                    <div class="comment">
                      <i class="fa fa-comments"></i> 11
                    </div>
                    <div class="view">
                      <i class="fa fa-eye"></i> 9141
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-5 col-md-5 col-sm-5">
                <div class="product__item">
                  <div style="padding-top:10px;">
                  <div class="index_theater_text">
                  <strong style="font-size: xx-large;">SUITE CINEMA</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                   </div>
                   <div class="index_theater_text">
                    <strong style="font-size: xx-large;">SKY BOX</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                    </div>
                    <div class="index_theater_text">
                    <strong style="font-size: xx-large;">4DX</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                    </div>
                    <div class="index_theater_text index_theater_text2">
                    <strong style="font-size: xx-large;">CINE de CHEF</strong>
                    <h5>
                      <a class="dateblack" href="#">2022.01.19~2022.02.27</a>
                    </h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
     </section>
     <section class="product spad">
     <div class="container">
      <div class="row">
            <div class="col-lg-12">
               <div class="trending__product">
                  <div class="row">
                     <div class="col-lg-2 col-md-8 col-sm-8">
                        <div class="section-title">
                           <h4>공지사항</h4>
                        </div>
                     </div>
              <div class="col-lg-7 col-md-8 col-sm-8">
              <div class="rolling_box" style="padding:0px 10px 18px 10px;">
              
  <ul id ="rolling_box" style="border-left:solid">
    <li class="card_sliding" id ="first"><p></p></li>
    <li class="" id ="second"><p></p></li>
    <li class="" id ="third"><p></p></li>
  </ul>

</div>
</div>
                     <div class="col-lg-3 col-md-4 col-sm-4">
                        <div class="btn__all">
                           <a class="dateblack" href="/notice/notice.do" class="primary-btn">View All <span
                              class="arrow_right"></span></a>
                        </div>
                     </div>
                  </div>
            
                  <div class="row" style="padding:0 12px;">
                     <div class="col-lg-12 col-md-12 col-sm-12" style="padding:20px; border:groove; padding-right: 53%; border-radius: 15px;">
                <div style="padding-top:20px; border-top:groove;">
                  <strong>고객센터 <span>&ensp;&ensp;1234-1234</span></strong>
                  <div style="margin-left:80px;">
                  <span>고객센터 운영시간 (평일 09:00~18:00)</span>
                  <p>업무시간 외 자동응답 안내 가능합니다.</p>
                  </div>
                  <div class="index_notice_tag">
                    <a class="dateblack" href="">FAQ</a>
                  </div>
                  <div class="index_notice_tag">
                    <a class="dateblack" href="">1:1문의</a>
                  </div>
                  <div class="index_notice_tag">
                    <a class="dateblack" href="">분실물 문의</a>
                  </div>
                  <div class="index_notice_tag">
                    <a class="dateblack" href="">대관/단체 문의</a>
                  </div>
                </div>
                     </div>
                  </div>
            
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Product Section End -->
  <script>

        let rollingData = [
                            '[기타]20년 VIP 선정 기준 변경 및 추가 기준 관련 안내',
                            '[기타]21년 VIP 선정 기준 변경 및 추가 기준 관련 안내',
                            '[기타]22년 VIP 선정 기준 변경 및 추가 기준 관련 안내',
                            '[기타]23년 VIP 선정 기준 변경 및 추가 기준 관련 안내',
                          ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

        let timer = 2000 // 롤링되는 주기 입니다 (1000 => 1초)

        let first = document.getElementById('first'),
            second = document.getElementById('second'),
            third = document.getElementById('third')
        let move = 2
        let dataCnt = 1
        let listCnt = 1

        //위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

        first.children[0].innerHTML = rollingData[0]

        setInterval(() => {
            if(move == 2){
                first.classList.remove('card_sliding')
                first.classList.add('card_sliding_after')

                second.classList.remove('card_sliding_after')
                second.classList.add('card_sliding')

                third.classList.remove('card_sliding_after')
                third.classList.remove('card_sliding')

                move = 0
            } else if (move == 1){
                first.classList.remove('card_sliding_after')
                first.classList.add('card_sliding')

                second.classList.remove('card_sliding_after')
                second.classList.remove('card_sliding')

                third.classList.remove('card_sliding')
                third.classList.add('card_sliding_after')

                move = 2
            } else if (move == 0) {
                first.classList.remove('card_sliding_after')
                first.classList.remove('card_sliding')

                second.classList.remove('card_sliding')
                second.classList.add('card_sliding_after')

                third.classList.remove('card_sliding_after')
                third.classList.add('card_sliding')

                move = 1
            }
            
            if(dataCnt < (rollingData.length - 1)) {
                document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                    dataCnt++
            } else if(dataCnt == rollingData.length - 1) {
                document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                dataCnt = 0
            }

            if(listCnt < 2) {
                listCnt++
            } else if (listCnt == 2) {
                listCnt = 0
            }

            console.log(listCnt)
        }, timer);


    </script>
<!-- 스크롤버튼 -->
    <script>
$(function(){
    //마지막 스크롤 값을 저장할 lastScroll 변수
    var lastScroll = 0;
    $(window).on('scroll',function(){ //스크롤이 움직일때 마다 이벤트 실행
      if($(window).scrollTop() > 550){
        //현재 스크롤의 위치를 저장할 st 변수
        var st = $(this).scrollTop();
        //스크롤 상하에 따른 반응 정의
        if (st < lastScroll){
            if ($(window).scrollTop() >= 200) { //스크롤이 아래로 200px 이상 내려갔을때 실행되는 이벤트 정의
                $('#btnTop').hide();
            }
        } else {
             //스크롤이 위로 올라갔을때 실행되는 이벤트 정의
             $('#btnTop').show();
        }
        //현재 스크롤 위치(st)를 마지막 위치로 업데이트
        lastScroll = st;
      }
    });
});
</script>


<%@ include file="footer.jsp" %>   