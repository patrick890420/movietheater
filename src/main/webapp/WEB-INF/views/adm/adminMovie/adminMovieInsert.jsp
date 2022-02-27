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
                  <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Movie registration</h4>
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
          <form name="adminMovieInsertPro" action="adminMovieInsertPro.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
          <div class="row">
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">タイトル</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" name="title" aria-describedby="name" placeholder="タイトルを書いてください。" >
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">サブタイトル</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" name="subtitle" aria-describedby="name" placeholder="サブタイトルを書いてください。" >
                              </div>
                      </div>
                  </div>
              </div>
               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">公開日</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="form-group">
                                  <input name="rdate" type="text" class="form-control" value="2022-05-13">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">上映時間(3桁の数)</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="form-group">
                                  <input name="rtime" type="text" class="form-control" value="">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">映倫</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="form-group mb-4">
                                  <select class="custom-select mr-sm-2" name="rate" id="rate">
                                      <option selected>映倫</option>
                                      <option value="99">G</option>
                                      <option value="12">PG12</option>
                                      <option value="15">R15+</option>
                                      <option value="19">R18+</option>
                                  </select>
                              </div>
                      </div>
                  </div>
              </div>
               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title"> ポスター</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="input-group">
                                  <div class="custom-file">
                                      <input type="file" class="custom-file-input" id="inputGroupFile04" name="uploadFile01">
                                      <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
                                  </div>
                              </div>
                      </div>
                  </div>
              </div>
          </div>
              <div class="col-sm-12 col-md-12 col-lg-12">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">映画紹介</h4>
                              <div class="form-group">
                                  <textarea class="form-control" rows="8" placeholder="映画の紹介書いてください。" name="intro"></textarea>
                              </div>
                      </div>
                  </div>
              </div>
          <div class="mx-auto" style="text-align:center;">
            <button type="submit" class="btn btn-info">登錄</button>
            <button type="reset" class="btn btn-dark">リセット</button>
          </div>
          </form>
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
      <!-- ============================================================== -->
      <!-- End Container fluid  -->
      </div>
  <!-- ============================================================== -->
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>
