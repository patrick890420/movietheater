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
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 배우</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#actorsmodal">배우 검색</button>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 감독</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#directors_modal">감독 검색</button>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 장르</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#genres_modal">장르 검색</button>
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">국가</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#full-width-modal">국가 검색</button>
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
                                                               <!-- 모달 -->
                                                               
         <div id="actorsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                  <div class="col-xl-12">
    <div class="card">
      <div class="card-body">
          <ul class="nav nav-pills bg-nav-pills nav-justified mb-3">
            <li class="nav-item">
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
            <!--             <code> $().DataTable();</code> -->
                        <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="actorsTable" class="table table-striped table-bordered no-wrap">
                            <thead>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                               
                              </tr>
                              <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                               
                              </tr>
                              <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                               
                              </tr>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                
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
            <!--             <code> $().DataTable();</code> -->
                        <!-- DataTable 사용법 -->
            <!--        <code> $("#테이블id").DataTable();</code> -->
                        <div class="table-responsive">
                          <table id="directorsTable" class="table table-striped table-bordered no-wrap">
                            <thead>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                              </tr>
                              <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                              </tr>
                              <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                              </tr>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                              </tr>
                            </tfoot>
                          </table>
                        </div>
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
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                              </tr>
                              <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                              </tr>
                              <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                              </tr>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
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
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                              </tr>
                              <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                              </tr>
                              <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                              </tr>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
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
                 </div>
                  <div class="modal-footer">
                   <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                   <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           <!-- 2번째 모달 -->
         <div id="directros-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                   <h6>Text in a modal</h6>
                     <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                       <hr>
                         <h6>Overflowing text to show scroll behavior</h6>
                           <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                           <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.Vivamus sagittis lacus vel augue laoreet rutrum faucibus doloauctor.</p>
                           <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodocursus magna, vel scelerisque nisl consectetur et. Donec sed oddui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                  </div>
                  <div class="modal-footer">
                   <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                   <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           
                                                        <!--  3번째 모달 -->
                       
         <div id="genres-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                   <h6>Text in a modal</h6>
                     <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                       <hr>
                         <h6>Overflowing text to show scroll behavior</h6>
                           <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                           <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.Vivamus sagittis lacus vel augue laoreet rutrum faucibus doloauctor.</p>
                           <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodocursus magna, vel scelerisque nisl consectetur et. Donec sed oddui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                  </div>
                  <div class="modal-footer">
                   <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                   <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           
                                                               <!-- 4번째 모달 -->
                                                               
         <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                   <h6>Text in a modal</h6>
                     <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                       <hr>
                         <h6>Overflowing text to show scroll behavior</h6>
                           <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                           <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.Vivamus sagittis lacus vel augue laoreet rutrum faucibus doloauctor.</p>
                           <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodocursus magna, vel scelerisque nisl consectetur et. Donec sed oddui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                  </div>
                  <div class="modal-footer">
                   <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                   <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
                                                     <!-- 모달 종료 -->
  <!-- ============================================================== -->
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>
