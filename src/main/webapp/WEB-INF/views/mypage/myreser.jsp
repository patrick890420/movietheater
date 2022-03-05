<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css" type="text/css">
<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title></title>


<div class="d-flex" id="wrapper">
  <!-- Sidebar-->

  <div class="border-end bg-white" id="sidebar-wrapper"
    style="margin-left: 30px;">
    <div class="sidebar-heading border-bottom bg-light"
      style="padding: 20px 16px;">My page</div>
    <div class="list-group list-group-flush">
      <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="memberUp.do">アカウント管理</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="myreser.do">私の予約</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mycash.do">決済リスト</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mypass.do">パスワード変更</a>        
        
    </div>
  </div>
  <!-- Page content wrapper-->
  <div id="page-content-wrapper">
    <!-- Top navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="width: 1180px;">
      <div class="container-fluid">
        <div class="main-content">
          <div class="container mt-7">
            <div class="row" style="margin-top: -6%;">
                 <h2 style="margin-top: 115px; margin-left: 190px; margin-bottom: 30px;">My Reservation.</h2>
                <h6 class="heading-small text-muted mb-4" style="margin-left: 190px;"></h6>
               <c:forEach items="${relist}" var="relist"> 
              <div class="col-lg-7">
              <div class="formform" style="margin-left: 150px;">
                <div class="anime__details__pic set-bg" style="margin-left: 50px;">
                  <img width="180px;" height="250px;" style="margin-top: 20px; max-width: none;" src="/upload/${relist.poster }" alt="">
                </div>
              </div>
              </div>
            <div class="col-lg-5">
              <div class="anime__details__text"
                style="margin-left: -180px; margin-top: 30px;">
                <div class="anime__details__title">
                  <h3>${relist.title }</h3>
                  <span>${relist.subtitle }</span>
                </div>
                <div class="anime__details__widget">
               <div class="row">
                    <div class="col-lg-12 col-md-12">
                      <ul>
                        <li><span>映画館</span> ${relist.t_name } / ${relist.screen_name}</li>
                        <li><span>上映日時</span>
                            ${relist.tkt_date } / ${relist.tkt_time}
                        </li>
                        <li><span>席</span> ${relist.seat_cd }</li>
                      </ul>
                    </div> <!-- 12들 -->
                    </div>
                </div>
                <div class="input__btn">
                  <input type="button" class="input__btn3" value="予約キャンセル">
                  <hr style="margin-left: -220px; width: 140%;">
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
        <form action="myreser.do" name ="pageForm" method="get">
          <div class="product__pagination" style="border-top:solid 3px #80808036;">
            <ul class="pagination pagination-sm">
              <c:if test="${pageMaker.prev}">
              <li>
                <a href="#" data-pagenum='${pageMaker.startPage - 1 }'><i class="fa fa-angle-double-left"></i></a>
              </li>
              </c:if>
              <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
              <li class="${pageMaker.pageNum eq num ? 'active' : ''}">
                <a href="#" data-pagenum='${num}'>${num}</a>
              </li>
              </c:forEach>
              <c:if test="${pageMaker.next }">
              <li>
                <a href="#" data-pagenum='${pageMaker.endPage + 1 }'><i class="fa fa-angle-double-right"></i></a>
              </li>
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
    </nav>
  </div>
</div>

<script>

  var pagination = document.querySelector(".pagination");
  pagination.onclick = function() {
    event.preventDefault(); 
    document.pageForm.pageNum.value = event.target.dataset.pagenum;
    document.pageForm.submit(); 
  }

</script>
<%@ include file="../footer.jsp"%>
