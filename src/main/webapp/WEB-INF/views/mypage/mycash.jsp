<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css"
  type="text/css">


<!-- Bootstrap core JS-->
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>


<div class="d-flex" id="wrapper">

  <!-- Sidebar-->

  <div class="border-end bg-white" id="sidebar-wrapper"
    style="margin-left: 30px;">
    <div class="sidebar-heading border-bottom bg-light"
      style="padding: 20px 16px;">My page</div>
    <!-- margin-top: 70px; -->
    <div class="list-group list-group-flush">
      <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="memberUp.do">アカウント管理</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="myreser.do">私の予約</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mycash.do">決済リスト</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mypass.do">パスワード変更</a>
    </div>
  </div>

  <nav
    class="navbar navbar-expand-lg navbar-light bg-light border-bottom"
    style="width: 1180px;">
    <div class="container-fluid">
      <div class="main-content">
        <div class="container mt-7">

          <!-- Table -->
          <section class="cash">
            <div class="container">
              <div class="row">
                <div class="col-md-12 pb-5">
                <div>
                <h2 style="margin-top: 50px; text-align: center;">My Payment.</h2>
<!--                 <h6 class="heading-small text-muted mb-4" style="margin-bottom: 1.5rem;">現在までの決済リストを確認できます。</h6> -->
                  <table class="table table-hover" style="width: 1000px; margin-top: 50px; text-align: center;">
                    <colgroup>
                      <!-- 어떻게 나눌지도 생각해 보긔 (똑같이? or 다르게?) -->
                      <col width="20%">
                      <col width="20%">
                      <col width="20%">
                      <col width="20%">
                      <col width="20%">
                    </colgroup>
                    <tr>
                      <th>코드</th>
                      <th>영화이름</th>
                      <th>예매일</th>
                      <th>금액</th>
                      <th>결제상태</th>
                    </tr>

                    <tbody>
                      <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}" />
                      <c:forEach var="list" items="${list}">
                        <tr>
                          <!-- 코드 -->
                          <td>코드</td>
                          
                          <!-- 영화이름 (영화정보 페이지로 넘어가게 할까?)-->
                          <td class="cash76">
                          <a href="??.do?nt_cd=${list.nt_cd}">${list.title}</a></td>
                          
                          <td>
                            <!-- 예매일 --> <fmt:parseDate
                              pattern="yyyy-MM-dd" var="dateString"
                              value="${list.wdate}" /> <fmt:formatDate
                              pattern="yyyy-MM-dd" value="${dateString}" />
                          </td>
                          
                          <td>금액</td>
                          
                          <td>결제상태</td>
                          
                        </tr>
                        <c:set var="num1" value="${num1-1}" />
                      </c:forEach>
                    </tbody>
                  </table>
                  </div>

                  <%--        <!-- paging 나중에 다 수정하기-->
        <form action="mycash.do" name="pageForm" method="get">
          <div class="product__pagination">
            <hr>
            <ul class="pagination pagination-sm">
              <!-- 2. 이전페이지 활성화여부 -->
              <c:if test="${pageMaker.prev}">
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
                <li><a href="#" data-pagenum='${pageMaker.endPage + 1 }'>
                <i class="fa fa-angle-double-right"></i>
                </a></li>
              </c:if>
            </ul>
          </div>
          <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
            <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
          <input type="hidden" name="searchType" value="${pageMaker.cri.searchType }">
            <input  type="hidden" name="searchName" value="${pageMaker.cri.searchName }">
        </form> --%>
                </div>
                <!-- md-12 -->
              </div>
              <!-- row -->
            </div>
            <!-- container -->
          </section>
        </div>
      </div>
    </div>
  </nav>




</div>


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