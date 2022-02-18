<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- Hero Section Begin -->
  <div class="container">
  <div class="t_post">
<section class="">
      <div class="row">
        <div class="col-lg-12">
     <ul class="nav t_city" role="tablist" id="myTab">
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="#" id="1" onclick="citycheck(this.id)">서울</a>
      </li>
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="#" id="2" onclick="citycheck(this.id)">경기</a>
      </li>
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="#" id="3" onclick="citycheck(this.id)">인천</a>
      </li>
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="/theater/theater.do?t_area=4">강원</a>
      </li>
      <li role="presentation" class="col-lg-2 col-md-2 col-sm-2">
      <a href="/theater/theater.do?t_area=5">대전/충청</a>
      </li>
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="/theater/theater.do?t_area=6">대구</a>
      </li>
      <li role="presentation" class="col-lg-2 col-md-2 col-sm-2">
      <a href="/theater/theater.do?t_area=7">부산/울산</a>
      </li>
      <li role="presentation" class="col-lg-1 col-md-1 col-sm-1">
      <a href="/theater/theater.do?t_area=8">경상</a>
      </li>
      <li role="presentation" class="col-lg-2 col-md-2 col-sm-2">
      <a href="/theater/theater.do?t_area=9">광주/전라/제주</a>
      </li>
    </ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="home">
    <div class="t_subcity">
    <c:forEach items="${thList}" var="thList">
    <div class="t_citydata t_citydataline">
    <strong>
    <a href="/theater/theater.do?t_name=${thList.t_name}">${thList.t_name}</a>
    </strong>
    </div>
    </c:forEach>
  </div>
  </div>
</div>
</div>
</div>
</section>
  </div>
  </div>
  
<section class="hero">
  <div class="container" style="text-align: center;">
    <h3
      style="margin: 30px 0; background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg) repeat-x 0 50%;">
      <img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif"
        alt="THEATER">
    </h3>
  </div>
</section>
<!-- Hero Section End -->
<section class="">
  <div class="container">
    <div class="col-lg-12">
      <div class="">
        <div class="row">
        
          <div class="col-lg-7 col-md-7 col-sm-7">
          <c:forEach items="${thinfo}" var="thinfo">
            <div class="section-title">
              <h2>${thinfo.t_name}</h2>
            </div>
              <div class="t_infotext">
                <strong> 총 상영관 수 <span>&ensp;${thinfo.t_screen}개관</span></strong>
                <strong class="t_sit"> 총 좌석수 <span>&ensp;${thinfo.t_seat}석</span></strong>
              </div>
              <div class="t_infotext">
              <strong > ${thinfo.t_address}</strong>
              </div>
              </c:forEach>
              <div class="t_icon">
              
              <!-- 수정중 -->
    <!-- Button trigger modal -->
    <button type="button" class="btn t_modaliconstart" id="modal_show">
    <img src="/resources/img/theater/theatericon1.png" alt="대중교통 안내" class="t_iconimg">
        <span class="t_modal_name">대중교통 안내</span>
    </button>
 
    <!-- Modal1 -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title t_modaltitle" id="exampleModalLabel">대중교통 안내</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img src="/resources/img/theater/theatericon5.png" alt="대중교통 안내" class="t_iconimg">
                    <span class="t_modaltextname">지하철로 오시는 길</span>
                    <ul class="t_modallisttext">
                      <li>
                        <span>
                          <strong>[JSL-Movie 영업시간 내]</strong>
                        </span>
                        <p class="t_modaltext"> 오전 10시 30분 ~ 오후 10시 </p>
                      </li>
                      <li>
                        <span>
                          <strong>오룡역 하차 > 3번 출구로 이동 > JSL빌딩 진입</strong>
                        </span>
                        <p class="t_modaltext"> JSL빌딩 엘리베이터로 5층 이동 > JSL-Movie 입구 </p>
                      </li>
                      <li>
                        <span>
                          <strong>[JSL-Movie 영업시간 외]</strong>
                        </span>
                        <p class="t_modaltext"> 오후 10시 ~ 익일 오전 10시 30분 </p>
                      </li>
                      <li>
                        <span>
                          <strong>오룡역 하차 > 3번 출구 > 좌측 도보 200미터 이동 > JSL-Movie 입구</strong>
                        </span>
                      </li>
                    </ul>
                    <img src="/resources/img/theater/theatericon4.png" alt="대중교통 안내" class="t_iconimg">
                    <span class="t_modaltextname">버스로 오시는 길</span>
                    <ul class="t_modallisttext">
                    <li>
                        <span>
                          <strong>JSL정류장하차> 좌측 도보 200미터 이동 > JSL-Movie 입구</strong>
                        </span>
                      </li>
                      </ul>
                </div>
            </div>
        </div>
    </div>
    <button type="button" class="btn" id="modal_show2">
    <img src="/resources/img/theater/theatericon2.png" alt="자가용/주차 안내" class="t_iconimg">
        <span class="t_modal_name">자가용/주차 안내</span>
    </button>
 
    <!-- Modal2 -->
    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title t_modaltitle2" id="exampleModalLabel">자가용/주차 안내</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img src="/resources/img/theater/theatericon6.png" alt="자가용" class="t_iconimg">
                    <span class="t_modaltextname">자가용으로 오시는 길</span>
                    <ul class="t_modallisttext">
                      <li>
                        <span>
                          <strong>[네비게이션 주소]</strong>
                        </span>
                        <p class="t_modaltext"> 대전 중구 계룡로 761, JSL-Movie </p>
                      </li>
                      <li>
                        <span>
                          <strong>[주차 TIP]</strong>
                        </span>
                        <p class="t_modaltext"> P1층 > G, H, J 15 ~ 19번 (옐로우 존) </p>
                        <p class="t_modaltext"> P1층 > G, H, J 15 ~ 19번 (옐로우 존) </p>
                        <p class="t_modaltext"> 해당 위치 주차 시 JSL-Movie 진입이 용이합니다. (전용 엘리베이터) </p>
                      </li>
                    </ul>
                    <img src="/resources/img/theater/theatericon7.png" alt="주차요금" class="t_iconimg">
                    <span class="t_modaltextname">주차요금 안내</span>
                    <ul class="t_modallisttext">
                    <li>
                        <span>
                          <strong>[주차 할인]</strong>
                        </span>
                        <p class="t_modaltext"> 무인정산기 주차권 인증 시 영화 관람 당일 3시간 무료(초과 시 30분당 1,000원 / JSL몰 구매 금액 합산 시 최대 12시간) </p>
                      </li>
                      <li>
                        <span>
                          <strong>[무인정산기 위치]</strong>
                        </span>
                        <p class="t_modaltext"> JSL-Movie 지상 1층, P1~ P3 전용 엘리베이터 로비 </p>
                      </li>
                      <li>
                        <span>
                          <strong>[주차권 안내]-사전정산 시스템</strong>
                        </span>
                        <p class="t_modaltext"> [모바일 티켓] </p>
                        <p class="t_modaltext"> 바로티켓 상단 주차권 버튼 클릭 시 바코드 생성 </p>
                        <p class="t_modaltext"> [지류 티켓] </p>
                        <p class="t_modaltext"> 영화 티켓 하단 주차권 바코드 사용 </p>
                      </li>
                      </ul>
                </div>
            </div>
        </div>
    </div>
    <button type="button" class="btn btn-default btn-sm map" id="modal_show3">
    <img src="/resources/img/theater/theatericon3.png" alt="지도보기" class="t_iconimg">
       <span class="t_modal_name">지도보기</span>
    </button>
    <!-- Modal3 -->
    <div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title t_modaltitle3" id="exampleModalLabel">지도보기</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="padding:1rem 0.7rem 1rem 1rem;">
     
<!-- Modal -->

<div id="googleMapModal" class="fade" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-body">
<!-- 맵 출력 -->

<div id="googleMap" style="width: 100%; height: 500px;">

</div>

</div>


</div>

</div>
                    
                </div>
            </div>
        </div>
    </div>
              </div>
          </div>
         
          <!-- 수정부분끝 -->
          <div class="col-lg-3 col-md-3 col-sm-3 t_reco t_recoradi4">
          <c:forEach items="${thinfo}" var="thinfo">
            <div class="t_recotitle">
              <strong>${thinfo.t_name}</strong>에서<br><span>나일강의 죽음</span><br>  어떠세요?
            </div>
            <div class="t_recoline"></div>
            <div class="">
              <span>나일강의 죽음</span><br>예매율 25.9%
            </div>
            <div class="t_icon2">
            <a href=""><span class="icon_link_alt"></span></a>
            <a href=""><span class="icon_heart_alt"></span></a>
            </div>
            </c:forEach>
          </div>
          <div class="col-lg-2 col-md-2 col-sm-2 t_reco t_recoradi4">
            <img src="/resources/img/trending/movie1.jpg" class="t_recoradi4">
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- event start -->
<section class="" style="padding-top:80px; padding-bottom:0px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="trending__product">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="section-title">
                  <h4>Event</h4>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="btn__all">
                  <a href="#" class="primary-btn">View All <span
                    class="arrow_right"></span></a>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="product__item">
                  <div class="product__item__pic set-bg t_eventimg"
                    data-setbg="/resources/img/trending/event1.jpg">
                    <div class="ep">D-day</div>
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
                      <a href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="product__item">
                  <div class="product__item__pic set-bg t_eventimg"
                    data-setbg="/resources/img/trending/event2.jpg">
                    <div class="ep">D-day</div>
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
                      <a href="#">2022.01.19~2022.02.27</a>
                    </h5>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="product__item">
                  <div class="product__item__pic set-bg t_eventimg"
                    data-setbg="/resources/img/trending/event3.jpg">
                    <div class="ep">D-day</div>
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
                      <a href="#">2022.01.19~2022.02.27</a>
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
     <!-- event end -->
     <!-- sc start -->
     <section class="">
     <div class="container">
      <div class="row">
        <div class="col-lg-12">
     <ul class="nav nav-tabs t_tablist" role="tablist" id="myTab">
      <li role="presentation" class="active col-lg-6 col-md-6 col-sm-6"><a href="#date" aria-controls="date" role="tab" data-toggle="tab">상영시간표</a></li>
      <li role="presentation" class="col-lg-6 col-md-6 col-sm-6 t_tableftline"><a href="#charge" aria-controls="charge" role="tab" data-toggle="tab">요금안내</a></li>
    </ul>

<div class="tab-content">
<div role="tabpanel" class="theater_date tab-pane active" id="date">
<div class="t_date2">

</div>
</div>
  <div role="tabpanel" class="tab-pane" id="charge">
    <strong>2D 일반석</strong>
    <div class="row t_chargetext">
      <div class="col-lg-6 col-md-6 col-sm-6">
        <span>주중(월~목)</span>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6">
        <span>주말(금~일)</span>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
</section>

<!-- Product Section End -->
<!-- Product Section Begin -->
<section class="">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 t_age">

                <div class="t_agelist">
                <div class="t_ep0">전체</div>
                <strong>전체관람가</strong>
                </div>
                <div class="t_agelist">
                <div class="t_ep12">12</div>
                <strong>12세 관람가</strong>
                </div>
                <div class="t_agelist">
                <div class="t_ep15">15</div>
                <strong>15세 관람가</strong>
                </div>
                <div class="t_agelist">
                <div class="t_ep19">청불</div>
                <strong>청소년 관람불가</strong>
                </div>

              
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
              <div class="t_filminfo">
                <div>
                <div class="t_ep12">12</div>
                  <span class="t_filmtitle">해적-도깨비 깃발</span>
                  <p style="margin: 30px 0 15px 30px;">▶2D 3관
                    8층[삼화페인트 안심닥터관]총 172석</p>
                  <ul style="margin-left: 30px;">
                    <li class="t_filmtime">
                      <strong>
                      <a href="">7:30<br> <span
                        style="font-size: 11px;">150석</span>
                    </a>
                    </strong>
                    </li>
                  </ul>
                  <p style="margin: 30px 0 15px 30px;">▶2D 3관
                    8층[삼화페인트 안심닥터관]총 172석</p>
                  <ul style="margin-left: 30px;">
                    <li class="t_filmtime">
                    <strong>
                      <a href="">7:30<br> <span
                        style="font-size: 11px;">150석</span>
                    </a>
                    </strong>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
              <img id = "introImg2" border="0" class="t_ranpost">
            </div>
          </div>
</section>

<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>
<!-- 아이콘모달 -->
<script>
$(document).ready(function() {
    $("#modal_show").click(function() {
        $("#exampleModal").modal("show");
    });
    
    $("#modal_show2").click(function() {
      $("#exampleModal2").modal("show");
  });
    $("#modal_show3").click(function() {
      $("#exampleModal3").modal("show");
  });

    $("#close_modal").click(function() {
        $("#exampleModal").modal("hide");
    });
});
</script>
<!-- city -->
<script>
    function citycheck(clecked_id) {
      alert(clecked_id);

      $.ajax({
        url : "/theater/theater.do",
        type : "get",
        data : "t_area=" + clecked_id,
        success : function(data) {
          alert("됨!!!!!");
        },
        error : function() {
          alert("슈발");
        }
      })
    }
  </script>


<!-- map modal -->
<script>

$(document).ready(function() {



$("button.map").on("click", function() {

$("div#googleMapModal").modal();

/* myMap(); */

});


//모달창 이벤트 등록 -> myMap() 함수 호출, 동적 생성된 엘리먼트 삭제 연계

$("div#googleMapModal").on("shown.bs.modal", function() {

myMap();

});

$("div#googleMapModal").on("hidden.bs.modal", function() {

$("div#googleMap").empty();

});



});

</script>



<script>

function myMap() {



//위도, 경도 

var center = new google.maps.LatLng(37.500431, 127.033176);

var handok = new google.maps.LatLng(37.499362, 127.033202);


//맵 정보

var mapProp = {

center : center,

zoom : 17,

};

//맵 요청

var map = new google.maps.Map(document

.getElementById("googleMap"), mapProp);



//마커 표시

var marker = new google.maps.Marker({

position : handok

});

marker.setMap(map);



//InfoWindow

var infowindow = new google.maps.InfoWindow(

{

content : "<div style=\"text-align:center;\"><strong>한독약품빌딩</strong><br>서울특별시 강남구 역삼1동 735<br><img src=\"handok_small.png\"></div>"
});
infowindow.open(map, marker);
}

</script>

<!-- 랜덤배너출력1 -->
<script type="text/javascript">
  var imgArray = new Array();
  imgArray[0] = '/resources/img/theater/post1.jpg';
  imgArray[1] = '/resources/img/theater/post2.jpg';
  imgArray[2] = '/resources/img/theater/post3.jpg';
  
  function showImage(){
    var imgNum = Math.round(Math.random()*2);
    var objImg = document.getElementById("introImg");
    objImg.src = imgArray[imgNum];
  }
</script>

<!-- 랜덤배너출력2 -->
<script type="text/javascript">
  var imgArray = new Array();
  imgArray[0] = '/resources/img/theater/footpost1.jpg';
  imgArray[1] = '/resources/img/theater/footpost2.jpg';
  
  function showImage2(){
    var imgNum = Math.round(Math.random()*1);
    var objImg = document.getElementById("introImg2");
    objImg.src = imgArray[imgNum];
  }
</script>

<!-- Product Section End -->
<%@ include file="../footer.jsp"%>