<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="../adminheader.jsp" %>
  <div class="page-wrapper">
    <div class="page-breadcrumb">
      <div class="row">
        <div class="col-7 align-self-center">
          <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Movie Schedule Registration</h4>
          <div class="d-flex align-items-center">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb m-0 p-0">
                <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
                <li class="breadcrumb-item text-muted active" aria-current="page">Movie</li>
                <li class="breadcrumb-item text-muted active" aria-current="page">Schedule</li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
    <div style="padding-right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto; width: 100%;">
      <div class="card">
        <div class="card-body">
          <form name="adminScheduleInsertPro" action="adminScheduleInsertPro.do" method="get">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
            <input type="hidden" name="screen_cd" value="${screen_cd}">
            <input type="hidden" id="m_cd" name="m_cd">
              <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Step1</h4>
                      <div class="form-group">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#filmsmodal">映画検索</button>
                      </div>
                      <div  class="form-group filmsForm">
                        <input class="form-contorl" id="m_name" >
                      </div>    
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Step2</h4>
                      <h6 class="card-subtitle">上映時間</h6>
                      <h6 class="card-subtitle">* <code>映画の上映時間を選択してください。</code></h6>
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" name="start_time" value="2022-03-10T12:00:00">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="mx-auto" style="text-align:center;padding-top: 80px;">
                  <button type="submit" class="btn btn-info">Submit</button>
                  <button type="reset" class="btn btn-dark">Reset</button>
                </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="container-fluid">
    <div class="table-responsive">
      <table id="actorsTable" class="table table-striped table-bordered no-wrap text-center">
        <thead>
          <tr>
            <th>MOVIE</th>
            <th>TIME</th>
          </tr>
        </thead>
          <tbody>
            <c:forEach items="${scheduleList}" var="scheduleList">
                <tr class="">
                  <td>
                    <p class=" mb-0" data-toggle="modal" data-target="#actors-header-modal">${scheduleList.title}</p>
                  </td>
                  <td>
                    <p class=" mb-0" data-toggle="modal" data-target="#actors-header-modal">${scheduleList.start_time}</p>
                  </td>
                </tr>
            </c:forEach>
          </tbody>
          <tfoot>
            <tr>
              <th>MOVIE</th>
              <th>TIME</th>
            </tr>
          </tfoot>
        </table>
      </div>
      </div>
<!-- 모달 -->
<div id="filmsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">映画検索</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
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
                          <tr class="moviesTr">
                            <td>
                              <p class="movieCode" data-toggle="modal" data-target="#primary-header-modal">${mlist.m_cd }</p>
                            </td> 
                            <td>
                              <p class="movieTitle" data-toggle="modal" data-target="#primary-header-modal">${mlist.title}</p>
                            </td>
                            <td>
                              <p class="movieRdate" data-toggle="modal" data-target="#primary-header-modal"><fmt:parseDate value="${mlist.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                            </td> 
                            <td>
                              <p class="movieRtime" data-toggle="modal" data-target="#primary-header-modal">${mlist.rtime }分</p>
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
</div>
<script>
$(".moviesTr").on("click", function () {
  var filmsForm =$(this);
  var mname=filmsForm.find(".movieTitle").text();
  var mcd=filmsForm.find(".movieCode").text();
  $("#m_name").val(mname);
  $("#m_cd").val(mcd);
  $("#filmsmodal").modal('hide');
});
</script>
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>