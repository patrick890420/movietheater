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
            <a href="#actors" data-toggle="tab" aria-expanded="true" class="nav-link rounded-0 active">
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
                    <div class="col-12">
                      <div class="card">
                        <div class="card-body">
                          <h4 class="card-title">俳優登録</h4>
                          <h6 class="card-subtitle"><code>* </code>新しい俳優情報の入力</h6>
                            <form class="mt-4" action="actorsInsert.do" method="get" enctype="multipart/form-data">
                              <div class="form-group">
                                <div class="row">
                                  <label class="col-lg-1 text-center">声明</label>
                                  <div class="col-lg-11">
                                    <div class="row">
                                      <div class="col-md-3">
                                        <input type="text" id="a_name" name="a_name" class="form-control">
                                      </div>
                                      <label class="col-lg-1 text-center">写真</label>
                                      <div class="col-md-6">
                                        <div class="input-group mb-3">
                                          <div class="input-group-prepend">
                                            <span class="input-group-text">アップロード</span>
                                          </div>
                                          <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="inputGroupFile01" name="uploadFile">
                                            <label class="custom-file-label" for="inputGroupFile01">ファイル選択</label>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="col-md-2">
                                        <button type="submit" class="btn btn-primary text-center">登録</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                    <div class="table-responsive">
                      <table id="actorsTable" class="table table-striped table-bordered no-wrap text-center">
                        <thead>
                          <tr>
                            <th>CODE</th>
                            <th>NAME</th>
                          </tr>
                        </thead>
                          <tbody>
                            <c:forEach items="${actors}" var="actors">
                                <tr class="actorsTr">
                                  <td>
                                    <p class="actorsCode mb-0" data-toggle="modal" data-target="#primary-header-modal">${actors.a_cd}</p>
                                  </td>
                                  <td>
                                    <p class="actorsName mb-0" data-toggle="modal" data-target="#primary-header-modal">${actors.a_name}</p>
                                    <input type="hidden" class="actorsImg mb-0" data-toggle="modal" data-target="#primary-header-modal" value="${actors.a_img}">
                                  </td>
                                </tr>
                            </c:forEach>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>CODE</th>
                              <th>NAME</th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
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
 <!-- Primary Header Modal -->
<div id="primary-header-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="primary-header-modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header modal-colored-header bg-primary">
        <h4 class="modal-title" id="primary-header-modalLabel">ACTORS INFO</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="a_cd">CODE</label>
            <input class="form-control" id="a_cd" name="a_cd" readonly>
          </div>
          <div class="form-group">
            <label for="actors_name">NAME</label>
            <input class="form-control" id="a_name" name="a_name">
          </div>
          <div class="form-group">
            <label for="actors_photo">PHOTO</label>
            <input class="form-control" type="hidden" id="a_img" name="a_img">
            <img class="form-control" id="showImg" name="showImg" alt="" src="" style="height:50px;">
          </div>
          <div>
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Change Photo Upload</h4>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Upload</span>
                  </div>
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>

<script>  
$(".actorsTr").on("click", function () {
  var actorsInfo = $(this);
  var acd = actorsInfo.find(".actorsCode").text();
  var aname = actorsInfo.find(".actorsName").text(); 
  var aimg = actorsInfo.find(".actorsImg").val();
    $("#a_cd").val(acd);
    $("#a_name").val(aname);
    $("#a_img").val(aimg);
    $("#showImg").attr("src","/resources/img/"+aimg);
  });
</script>
<!-- ============================================================== -->
<!-- End Container fluid  -->
<!-- ============================================================== -->
<%@ include file="../adminfooter.jsp"%>