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
          <form action="adminMovieInsertPro.do" method="post">
          <div class="row">
                               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 제목</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" id="title" aria-describedby="name" placeholder="영화 제목" >
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 부제목</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" id="subtitle" aria-describedby="name" placeholder="영화 부제목" >
                              </div>
                      </div>
                  </div>
              </div>
               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 개봉일</h4>
                          <h6 class="card-subtitle">Using <code>input type="datetime-local"</code></h6>
                              <div class="form-group">
                                  <input id="rdate" type="datetime-local" class="form-control" value="2008-05-13T22:33:00">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">상영 시간</h4>
                          <h6 class="card-subtitle">Using <code>input type="time"</code></h6>
                              <div class="form-group">
                                  <input id="rtime"type="time" class="form-control" value="22:33:00">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">상영 등급</h4>
                          <h6 class="card-subtitle">To use add <code>.custom-select</code> class</h6>
                              <div class="form-group mb-4">
                                  <select class="custom-select mr-sm-2" id="rate">
                                      <option selected>등급 선택</option>
                                      <option value="1">전체 이용가</option>
                                      <option value="2">12세 이용가</option>
                                      <option value="3">15세 이용가</option>
                                      <option value="5">청소년 관람불가</option>
                                  </select>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-12 col-lg-12">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 간단 소개</h4>
                              <div class="form-group">
                                  <textarea class="form-control" rows="8" placeholder="영화 간단 소개를 입력해주세요." id="intro"></textarea>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 포스터</h4>
                          <h6 class="card-subtitle">To use add <code>.input-group-append</code> class to the div
                          </h6>
                              <div class="input-group">
                                  <div class="custom-file">
                                      <input type="file" class="custom-file-input" id="inputGroupFile04">
                                      <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
                                  </div>
                                  <div class="input-group-append">
                                      <button class="btn btn-outline-secondary" type="button">업로드</button>
                                  </div>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 스냅샷</h4>
                          <h6 class="card-subtitle">To use add <code>.input-group-append</code> class to the div
                          </h6>
                              <div class="input-group">
                                  <div class="custom-file">
                                      <input type="file" class="custom-file-input" id="inputGroupFile05">
                                      <label class="custom-file-label" for="inputGroupFile05">Choose file</label>
                                  </div>
                                  <div class="input-group-append">
                                      <button class="btn btn-outline-secondary" type="button">업로드</button>
                                  </div>
                              </div>
                      </div>
                  </div>
              </div>
             
             
          </div>
          <div class="mx-auto" style="text-align:center;">
            <button type="submit" class="btn btn-info">Submit</button>
            <button type="reset" class="btn btn-dark">Reset</button>
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
