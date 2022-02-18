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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">공지사항</h4>
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
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
                      <div class="card-body">
<!--             <code> $().DataTable();</code> -->
<!-- DataTable 사용법 -->
<!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="noticeTable" class="table table-striped table-bordered no-wrap">
                          <colgroup>
                            <col width="10%">
                            <col width="*">
                            <col width="10%">
                            <col width="10%">
                          </colgroup>
                            <thead>
                              <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:set var="num1" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
                              <c:forEach var="list" items="${list}">
                                <tr>
                                  <td>${num1}</td><!-- 번호 -->
                                  <td class="notice76"><a href="adminBoardView.do?nt_cd=${list.nt_cd}">${list.title}</a></td><!-- 제목 -->
                                  <td>
                                    <fmt:parseDate pattern="yyyy-MM-dd" var="dateString" value="${list.wdate}"/>
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${dateString}"/>
                                  </td>
                                  <td>${list.hits}</td>
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
                  onClick="location.href='adminBoardWrite.do'">글쓰기</button>
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