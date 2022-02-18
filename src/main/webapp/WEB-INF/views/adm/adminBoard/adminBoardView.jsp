<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp"%>
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
  <!-- ============================================================== -->
  <!-- Bread crumb and right sidebar toggle -->
  <!-- ============================================================== -->
  <div class="page-breadcrumb">
    <div class="row">
      <div class="col-7 align-self-center">
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">View</h4>
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">EVENT</a></li>
              <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">공지사항</a></li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <!-- ============================================================== -->
  <!-- End Bread crumb and right sidebar toggle -->
  <!-- ============================================================== -->
  <!-- ============================================================== -->
  <!-- Container fluid  -->
  <!-- ============================================================== -->
  <div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Start Page Content -->
    <!-- ============================================================== -->
    <div class="col-xl-12">
    <div class="card">
      <div class="card-body">
        <div class="tab-content">
          <div class="tab-pane show active" id="actors">
<!-- basic table -->
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-body adminview45">
<!--             <code> $().DataTable();</code> -->
<!-- DataTable 사용법 -->
<!--        <code> $("#테이블id").DataTable();</code> -->
                        <h2>${view.title}</h2>
                          <p class=""> | ${view.wdate} |
                            <i class="fa fa-eye"></i>${view.hits}
                          </p>
                          <input type="hidden" class="" value="${view.nt_cd}">

                            <div class="">
                              ${view.content}
                            </div>

  
  <div class="">
    <c:if test="#">
    <a href="noticeview.do?bno=${preVO.bno}&pageNum=${cri.pageNum}&amount=${cri.amount}" class="btn_prev">
          <i class="fa fa-angle-left"></i>
          <span class="prev_wrap">
            <strong>이전글</strong><span>다음 내용</span>
          </span>
        </a>
      </c:if>
      <c:if test="#">
        <a href="javascript:void(0)" class="btn_prev"><i class="fa fa-angle-left"></i>
        <!-- 클릭시 반응 없음 -->
          <span class="prev_wrap">
            <strong>이전글</strong><span>마지막 글 입니다</span>
          </span>
        </a>
      </c:if>

<!-- button -->
    <div class="write77">
          <c:if test="${pinfo eq preVO.writer }">
            <a href="#">
              <button type="button" class="btn btn-outline-primary btn-rounded" onclick="return confirm('수정하시겠어요?')">
                <i class="fas fa-check"></i>&nbsp;수정
              </button>
            </a>
            <a href="#">
              <button type="button" class="btn btn-outline-primary btn-rounded" onclick="return confirm('삭제하시겠어요?')">
                <i class="fas fa-times"></i>&nbsp;삭제
              </button>
            </a>
            <button type="button" class="btn btn-outline-primary btn-rounded" onclick="location.href='adminNotice.do'">
              <i class="fas fa-list"></i>&nbsp;목록
            </button>
          </c:if> 

          <c:if test="${nextVO != null}">
        <a href="noticeview.do?bno=${nextVO.bno}&pageNum=${cri.pageNum}&amount=${cri.amount}" class="btn_next">
          <span class="next_wrap">
            <strong>다음글</strong><span>${nextVO.title}</span>
          </span>
          <i class="fa fa-angle-right"></i>
        </a>
        </c:if>
        <c:if test="${nextVO == null}">
        <a href="javascript:void(0)" class="btn_next">
          <span class="next_wrap">
            <strong>다음글</strong><span>마지막 글 입니다</span>
          </span>
          <i class="fa fa-angle-right"></i>
        </a>
        </c:if>
        </div>
  </div>
</div><!-- card-body -->
                    </div>
                  </div>
                </div>
              </div>
              <!-- Directors tab -->

          </div><!-- tab-content -->
      </div> <!-- end card-body-->
  </div> <!-- end card-->
</div> <!-- col-xl-12 -->
    

    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
  </div>
  <!-- ============================================================== -->
  <!-- End Container fluid  -->
  <!-- ============================================================== -->

<script>

</script>

<%@ include file="../adminfooter.jsp"%>