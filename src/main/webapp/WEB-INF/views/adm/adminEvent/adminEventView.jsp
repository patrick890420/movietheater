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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">イベントView</h4><!-- 이벤트view -->
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">イベント</a></li><!-- 이벤트 -->
<!--               <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">お知らせ</a></li>공지 -->
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
                        <h2>${eview.title}</h2>
                          <p class=""> | ${eview.wdate} |</p>
                          
                          <input type="hidden" class="" value="${eview.event_cd}">
                            <div class="">${eview.content}</div>

<!-- button -->
  <div class="adminbutton">
    <a href="adminEventModify.do?event_cd=${prev.event_cd}"
       class="btn btn-outline-primary btn-rounded"><i class="fas fa-check"></i>修整
    </a>&nbsp;<!-- 수정 -->
    
    <a href="adminBoardDelete.do?nt_cd=${eview.event_cd}" onClick="return confirm('削除しますか？')"
       class="btn btn-outline-primary btn-rounded" id="delete_btn"><i class="fas fa-times"></i>削除
    </a>&nbsp;<!-- 삭제 -->
    
    <button type="button" class="btn btn-outline-primary btn-rounded" onclick="location.href='adminEvent.do'">
      <i class="fas fa-list"></i>リスト<!-- 리스트(목록) -->
    </button>

</div><!-- write77 -->
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