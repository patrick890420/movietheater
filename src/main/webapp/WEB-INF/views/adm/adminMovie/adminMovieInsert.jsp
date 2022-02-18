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
                          <h4 class="card-title">영화 제목</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" name="title" aria-describedby="name" placeholder="영화 제목" >
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 부제목</h4>
                              <div class="form-group">
                                  <input type="text" class="form-control" name="subtitle" aria-describedby="name" placeholder="영화 부제목" >
                              </div>
                      </div>
                  </div>
              </div>
               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 개봉일</h4>
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
                          <h4 class="card-title">상영 시간</h4>
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
                          <h4 class="card-title">상영 등급</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="form-group mb-4">
                                  <select class="custom-select mr-sm-2" name="rate" id="rate">
                                      <option selected>등급 선택</option>
                                      <option value="99">전체 이용가</option>
                                      <option value="12">12세 이용가</option>
                                      <option value="15">15세 이용가</option>
                                      <option value="19">청소년 관람불가</option>
                                  </select>
                              </div>
                      </div>
                  </div>
              </div>
               <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 포스터</h4>
                          <h6 class="card-subtitle"><code></code></h6>
                              <div class="input-group">
                                  <div class="custom-file">
                                      <input type="file" class="custom-file-input" id="inputGroupFile04" name="uploadFile01">
                                      <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
                                  </div>
                                  <div class="input-group-append">
                                      <button class="btn btn-outline-secondary" type="button">업로드</button>
                                  </div>
                              </div>
                      </div>
                  </div>
              </div>
          </div>
              <div class="col-sm-12 col-md-12 col-lg-12">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 간단 소개</h4>
                              <div class="form-group">
                                  <textarea class="form-control" rows="8" placeholder="영화 간단 소개를 입력해주세요." name="intro"></textarea>
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
                 <div style="text-align: center;"><h3>배우 검색</h3></div>
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
          </div>
      </div> <!-- end card-body-->
  </div> <!-- end card-->
</div> <!-- end col -->
                 </div>
                </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           
           <!-- 2번째 모달 -->
         <div id="directrosmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                 <div style="text-align: center;"><h3>감독 검색</h3></div>
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
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           
                                                        <!--  3번째 모달 -->
                       
         <div id="genresmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                  <div style="text-align: center;"><h3>장르 검색</h3></div>
                 
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
              </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
           </div>
           
                                                               <!-- 4번째 모달 -->
                                                               
         <div id="nationsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-full-width">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
                 <div class="modal-body">
                    <div style="text-align: center;"><h3>국가 검색</h3></div>
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
                  </div>
               </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
           </div><!-- /.modal -->
                                                     <!-- 모달 종료 -->
  <!-- ============================================================== -->
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>
