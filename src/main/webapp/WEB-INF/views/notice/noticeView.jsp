<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<section class="hero">
  <div class="container">
    <div class="row event8">
      <div class="col-md-12 event9">
        <h2>お知らせ</h2><!-- 공지 -->
      </div>
    </div>
  </div>
</section>
<!-- Section End -->

<!-- View -->
<section class="view">
  <div class="container viewbg">
    <div class="row">
      <div class="col-md-12 viewrow">
        <h2>${nview.title}</h2>
          <p> | ${nview.wdate} |&nbsp;<i class="fa fa-eye"></i>&nbsp;${nview.hits}</p>
          
          <input type="hidden" class="hdBno" value="${nview.nt_cd}">
          
            <div>${nview.content}</div>
          
<!-- 이전 -->
          <div class="">
            <c:if test="${prev !=null}">
            <a href="noticeView.do?nt_cd=${prev.nt_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
              class="btn"><i class="fa fa-angle-left"></i>
              <span class="btn waves-effect waves-light btn-rounded btn-outline-danger">${prev.title}</span>
            </a>
            </c:if>
            <c:if test="${prev ==null}">
            <a href="javascript:void(0)" class="btn"><i class="fa fa-angle-left"></i>
              <span class="btn waves-effect waves-light btn-rounded btn-outline-danger">ListPage</span>
            </a>
            </c:if>
<!-- 다음 -->
            <c:if test="${next !=null}">
            <a href="noticeView.do?nt_cd=${next.nt_cd}&pageNum=${cri.pageNum}&amount=${cri.amount}"
              class="btn pull-right">
              <span class="btn waves-effect waves-light btn-rounded btn-outline-danger">${next.title}</span>
                <i class="fa fa-angle-right"></i>
            </a>
            </c:if>
            <c:if test="${next ==null}">
            <a href="javascript:void(0)"  class="btn pull-right">
              <span class="btn waves-effect waves-light btn-rounded btn-outline-danger">ListPage</span>
                <i class="fa fa-angle-right"></i>
            </a>
            </c:if>
          </div><!-- "" -->
          
<!-- button -->
          <div class="button">
            <button type="button" class="btn waves-effect waves-light btn-rounded btn-outline-danger" onclick="location.href='notice.do'">
              <i class="fa fa-list"></i>&nbsp;リスト<!-- 리스트(목록) -->
            </button>
          </div><!-- button -->
          
      </div><!-- col-md-12 -->
    </div><!-- row -->
  </div><!-- container -->
</section>

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