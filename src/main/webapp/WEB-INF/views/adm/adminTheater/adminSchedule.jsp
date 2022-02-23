<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="../adminheader.jsp" %>
  <!-- Page wrapper  -->
  <!-- ============================================================== -->
  <div class="page-wrapper">
      <!-- ============================================================== -->
      <!-- Bread crumb and right sidebar toggle -->
      <!-- ============================================================== -->
      <div class="page-breadcrumb">
          <div class="row">
              <div class="col-7 align-self-center">
                  <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Movie Info registration</h4>
                  <div class="d-flex align-items-center">
                      <nav aria-label="breadcrumb">
                          <ol class="breadcrumb m-0 p-0">
                              <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
                              <li class="breadcrumb-item text-muted active" aria-current="page">Movie</li>
                          </ol>
                      </nav>
                  </div>
              </div>
           </div>
      </div><!-- 1-1 -->
      <!-- ============================================================== -->
      <!-- End Bread crumb and right sidebar toggle -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Container fluid  -->
      <!-- ============================================================== -->
      <div class="container-fluid">
       <div class="card">
        <div class="card-body">
          <!-- ============================================================== -->
          <!-- Start Page Content -->
          <!-- ============================================================== -->
          <form name="adminMovieInsertPro" action="adminMovieInfoInsertPro.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
<%--             <input type="hidden" name="m_cd" value="${mlist.m_cd}"> --%>
<%--             <c:set target="${list}" property="list" /> --%>
<%--             <c:out value="${list.m_cd}" /> --%>
          <div class="row">
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 선택</h4>
                              <div class="form-group actorsForm">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#actorsmodal">영화 검색</button>
                                  <input class="form-contorl" id="m_name" name="m_name">
                                  <input type="hidden" id="m_cd" name="m_cd">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Input Type Date Time</h4>
                    <h6 class="card-subtitle">Using <code>input type="datetime-local"</code></h6>
<!--                <form class="mt-4"> -->
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" value="2008-05-13T22:33:00">
                      </div>
<!--                </form> -->
                  </div>
                </div>
              </div>
              
             
          <div class="mx-auto" style="text-align:center;">
            <button type="submit" class="btn btn-info">Submit</button>
            <button type="reset" class="btn btn-dark">Reset</button>
          </div>
      </div><!-- 2-1 -->
      </form>
      </div>
      </div>
          <!-- ============================================================== -->
          <!-- End PAge Content -->
          <!-- ============================================================== -->
          <!-- ============================================================== -->
          <!-- Right sidebar -->
          <!-- ============================================================== -->
          <!-- .right-sidebar -->
          <!-- ============================================================== -->
          <!-- End Right sidebar -->
          <!-- ============================================================== -->
    </div>
  </div>
      <!-- ============================================================== -->
      <!-- End Container fluid  -->
      <!-- 모달 -->
                                                               
<div id="actorsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
      <div style="text-align: center;"><h3>영화 검색</h3></div>
      <div class="tab-content">
      <div class="tab-pane show active" id="actors">
      <!-- basic table -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table id="actorsTable" class="table table-striped table-bordered no-wrap">
                    <thead>
                      <tr>
                        <th>CODE</th>
                        <th>TITLE</th>
                        <th>RDATE</th>
                        <th>RTIME</th>
                        <th>RATE</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${mlist }" var="mlist">
                          <tr class="actorsTr">
                            <td>
                              <p class="movieCode" data-toggle="modal" data-target="#primary-header-modal">${mlist.m_cd }</p>
                            </td> 
                            <td>
                              <p class="movieTitle" data-toggle="modal" data-target="#primary-header-modal">${mlist.title}</p>
                            </td>
                            <td>
                              <p class="movieRdate" data-toggle="modal" data-target="#primary-header-modal"><fmt:parseDate value="${mlist.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                                                                                            <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></p>
                            </td> 
                            <td>
                              <p class="movieRtime" data-toggle="modal" data-target="#primary-header-modal">${mlist.rtime }분</p>
                            </td> 
                            <td>
                              <p class="movieRate" data-toggle="modal" data-target="#primary-header-modal">${mlist.rate }</p>
                            </td> 
                          </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>CODE</th>
                        <th>TITLE</th>
                        <th>RDATE</th>
                        <th>RTIME</th>
                        <th>RATE</th>
                      </tr>
                    </tfoot>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- end-->
    </div> <!-- end -->
  </div> <!-- end  -->
</div>
           

<script>
$(".actorsTr").on("click", function () {
  var actorsForm =$(this);
  var mname=actorsForm.find(".movieTitle").text();
  var mcd=actorsForm.find(".movieCode").text();
  $("#m_name").val(mname);
  $("#m_cd").val(mcd);
  $("#actorsmodal").modal('hide');
});
</script>
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>