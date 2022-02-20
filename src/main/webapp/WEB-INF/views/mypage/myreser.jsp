<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Simple Sidebar - Start Bootstrap Template</title>


<div class="d-flex" id="wrapper">
  <!-- Sidebar-->

  <div class="border-end bg-white" id="sidebar-wrapper">
    <div class="sidebar-heading border-bottom bg-light">My page</div>
    <div class="list-group list-group-flush">
      <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mypage.do">My account</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="myreser.do">My Reservation</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mycash.do">My Payment</a>
    </div>
  </div>
  <!-- Page content wrapper-->
  <div id="page-content-wrapper">
    <!-- Top navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
      <div class="container-fluid">
        <div class="main-content">
          <div class="container mt-7">
            <div class="row">
                    <div class="col-lg-5"></div>
                        <div class="formformform" style="  width: max-content; margin-left: 140px;">
                    <h2 style="margin-bottom: 60px;">My Reservation.</h2>
                        <div class="anime__details__pic set-bg" style="margin-left: 50px;">
                            <img width="180px;" height="250px;" src="/resources/img/pos.jpg" alt="">
                        </div>
                        
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="anime__details__text" style="margin-left: -50px;">
                            <div class="anime__details__title">
                                <h3>냥냥</h3>
                                <span>섭타이틀 nyangnyang<!--${view.subtitle }  --></span>
                            </div>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <ul>
                                            <li><span>극장</span> 유성온천 5관</li>
                                            <fmt:parseDate value="${view.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                            <li><span>개봉일</span><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></li>
                                            <li><span>인원</span> 2매</li>
                                            <li><span>좌석</span> h3열, h2열</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                          <div class="input__btn">
                          <input type="button" class="input__btn2" value="예매 취소" style="margin-left: 400px ;margin-top: -30px;">
                          <hr style="margin-left: -220px; width: 140%;">
                          </div>
                        </div>
                    </div>
          
          
          
          
          
          
            <!-- Table -->
<!--             <div class="row" style="margin-top: -6%;">
             <div class="col-xl-8 m-auto order-xl-1"> 
                <div class="card-body">
                      <form class="formform">
                    <h2>My Reservation.</h2>
                    <h6 class="heading-small text-muted mb-4">私が見た映画</h6>
                      <div class="re_image" style="float: left;">
                      <img src="/resources/img/pos.jpg" alt="포스터 이미지" width="180px" height="250px"
                      style="max-width: 300%;"> steyle.css에서max-width: 100%; 걸려있어서 야매로 줬긔
                      </div>
                      
                        <div class="re_contents" style="float: right; margin-left: 30px; margin-bottom: 80px;">
                          <p class="retitle" style="font-size: 30px; font-weight: bold;">안시성</P>
                          <p class="retheater">유성온천관</p>
                          <p class="redate">2022.03.22</p>
                          <p class="rehito">2인</p>
                          <p class="reseki">H 3열, 4열</p>
                          <div class="input__btn">
                          <input type="button" class="input__btn2" value="예매 취소" style="margin-left: 500px ;margin-top: -30px;">
                          <hr style="margin-left: -220px; width: 130%;">
                          </div>
                        </div>
                        
                    </form>
                </div>
                </div>
              </div> -->
           </div> 
          </div>
        </div>
        </nav>
      </div>
  </div>
  
<!-- Bootstrap core JS-->
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>



<%@ include file="../footer.jsp"%>


<script>

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});

</script>