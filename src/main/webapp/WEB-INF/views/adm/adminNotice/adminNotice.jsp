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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">お知らせ</h4><!-- 공지 -->
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">お知らせ</a></li><!-- 공지 -->
<!--               <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">イベント</a></li>이벤트 -->
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
                      <div class="card-body">
            <!--             <code> $().DataTable();</code> -->
            <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="adminNoticeTable" class="table table-striped table-bordered no-wrap">
                          <colgroup>
                            <col width="10%">
                            <col width="*">
                            <col width="20%">
                          </colgroup>
                            <thead>
                              <tr>
                                <th class="adminview57">番号</th><!-- 번호 -->
                                <th class="adminview57">題目</th><!-- 제목 -->
                                <th class="adminview57">作成日</th><!-- 작성일 -->
                              </tr>
                            </thead>
                            <tbody>
                              <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
                              <c:forEach var="nlist" items="${nlist}">
                                <tr>
                                  <td class="adminview57">${nlist.nt_cd}</td><!-- 번호 -->
                                  <td><a href="adminNoticeModify.do?event_cd=0&nt_cd=${nlist.nt_cd}">${nlist.title}</a></td><!-- 제목 -->
                                  <td class="adminview57">
                                    <fmt:parseDate pattern="yyyy-MM-dd" var="dateString" value="${nlist.wdate}"/>
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${dateString}"/>
                                  </td>
                                </tr>
                               <c:set var="num1" value="${num1-1}"/>
                             </c:forEach> 
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Directors tab -->
              
<!--               글쓰기 -->
                <button type="button" class="btn waves-effect waves-light btn-rounded btn-outline-primary admin103"
                  onClick="location.href='adminBoardWrite.do'">作成</button><!-- 작성 -->
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
<%@ include file="../adminfooter.jsp"%>