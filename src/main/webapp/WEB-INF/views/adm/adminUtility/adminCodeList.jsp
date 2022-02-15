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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">
          Code List
        </h4>
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
              <li class="breadcrumb-item text-muted active" aria-current="page">Utility</li>
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
        <ul class="nav nav-pills bg-nav-pills nav-justified mb-3">
          <li class="nav-item" id="default">
            <a href="#actors" data-toggle="tab" aria-expanded="true" class="nav-link rounded-0">
              <i class="mdi mdi-home-variant d-lg-none d-block mr-1"></i>
              <span class="d-none d-lg-block">Actors</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#directors" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 ">
              <i class="mdi mdi-account-circle d-lg-none d-block mr-1"></i>
              <span class="d-none d-lg-block">Directors</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#nations" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
              <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
              <span class="d-none d-lg-block">Nations</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#genres" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
              <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
              <span class="d-none d-lg-block">Genres</span>
            </a>
          </li>
        </ul>
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
                      <table id="actorsTable" class="table table-striped table-bordered no-wrap">
                        <thead>
                          <tr>
                            <th>CODE</th>
                            <th>NAME</th>
                            <th>PHOTO</th>
                          </tr>
                        </thead>
                          <tbody>
                            <c:forEach items="${actors}" var="actors">
                              <tr>
                                <td>${actors.a_cd}</td>
                                <td>${actors.a_name}</td>
                                <td>${actors.a_img}</td>
                              </tr>
                            </c:forEach>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>CODE</th>
                              <th>NAME</th>
                              <th>PHOTO</th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                      <button class="btn btn-primary">actors register</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Directors tab -->
            <div class="tab-pane" id="directors">
              <!-- basic table -->
              <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
            <!--             <code> $().DataTable();</code> -->
                        <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                      <div class="table-responsive">
                        <table id="directorsTable" class="table table-striped table-bordered no-wrap">
                        <thead>
                          <tr>
                            <th>CODE</th>
                            <th>NAME</th>
                            <th>PHOTO</th>
                          </tr>
                        </thead>
                          <tbody>
                             <c:forEach items="${directors}" var="directors">
                              <tr>
                                <td>${directors.d_cd}</td>
                                <td>${directors.d_name}</td>
                                <td>${directors.d_img}</td>
                              </tr>
                            </c:forEach>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>CODE</th>
                              <th>NAME</th>
                              <th>PHOTO</th>
                            </tr>
                          </tfoot>
                        </table>
                        </div>
                        <button class="btn btn-primary">directors register</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- nations tab -->
              <div class="tab-pane" id="nations">
                 <!-- basic table -->
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-body">
            <!--             <code> $().DataTable();</code> -->
                        <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="nationsTable" class="table table-striped table-bordered no-wrap">
                            <thead>
                              <tr>
                                <th>Code</th>
                                <th>Name</th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:forEach items="${nations}" var="nations">
                                <tr>
                                  <td>${nations.n_cd}</td>
                                  <td>${nations.n_name}</td>
                                </tr>
                              </c:forEach>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Code</th>
                                <th>Name</th>
                              </tr>
                            </tfoot>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- genres tab -->
              <div class="tab-pane" id="genres">
                 <!-- basic table -->
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-body">
            <!--             <code> $().DataTable();</code> -->
                        <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="genresTable" class="table table-striped table-bordered no-wrap">
                            <thead>
                              <tr>
                                <th>Code</th>
                                <th>Name</th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:forEach items="${genres}" var="genres">
                                <tr>
                                  <td>${genres.g_cd}</td>
                                  <td>${genres.g_name}</td>
                                </tr>
                              </c:forEach>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Code</th>
                                <th>Name</th>
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
      </div> <!-- end card-body-->
  </div> <!-- end card-->
</div> <!-- end col -->
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->
</div>
<script>
  $(function() {
    // tab operation
    $('.nav-item').click(function() {
      var activeTab = $(this).attr('data-tab');
      $('li').css('background-color', 'white');
      $(this).css('background-color', 'green');
      $.ajax({
        type : 'GET',                 //get방식으로 통신
        url : activeTab + ".html",    //탭의 data-tab속성의 값으로 된 html파일로 통신
        dataType : "html",            //html형식으로 값 읽기
        error : function() {          //통신 실패시
          alert('통신실패!');
        },
        success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
          $('#tabcontent').html(data);
        }
      });
    });
    $('#default').click();          
  });
</script>
<!-- ============================================================== -->
<!-- End Container fluid  -->
<!-- ============================================================== -->
<%@ include file="../adminfooter.jsp"%>