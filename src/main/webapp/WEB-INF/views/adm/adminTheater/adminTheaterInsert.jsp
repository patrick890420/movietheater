<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp"%>
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">

<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Theaters registration
                        </h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item active">Theater</li>
                                    <li class="breadcrumb-item text-muted" aria-current="page">
                                    <a href="adminTheaterInsert2.do" class="text-muted">Screen</a></li>
                                    <li class="breadcrumb-item"><a href="adminTheaterInsert3.do" class="text-muted">Seat</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
           <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-lg-12">
                    
                        <div class="card">
                        <h4 id="list-item-1" class="bg-primary text-white" style="padding:15px;">Theater info</h4>
                            <div class="card-body">
                                <form name="adminteatherInsertPro" action="adminteatherInsertPro.do" method="post" enctype="multipart/form-data">
              <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Theater Code</h4>
                  <h6 class="card-subtitle">설정된<code>Theater Code</code>는 수정불가 입니다.</h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <div class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="t_cd" placeholder="Theater Code"
                          disabled>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-5 col-md-5 col-lg-5"
                    style="padding: 0;">
                    <div>
                      <div class="form-group mb-4">
                        <h4 class="card-title">Area</h4>
                        <select class="custom-select mr-sm-2"
                          id="inlineFormCustomSelect" name="t_area">
                          <option selected>Area Select</option>
                          <option value="1">도쿄1</option>
                          <option value="2">도쿄2</option>
                          <option value="3">도쿄3</option>
                          <option value="4">도쿄4</option>
                          <option value="5">도쿄5</option>
                          <option value="6">도쿄6</option>
                          <option value="7">도쿄7</option>
                          <option value="8">도쿄8</option>
                          <option value="9">도쿄9</option>
                          <option value="10">도쿄10</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <h4 class="card-title">Theater name</h4>
<!--                     <form class="mt-3"> -->
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="t_name" name="t_name" aria-describedby="name"
                          placeholder="Name">
                      </div>
<!--                     </form> -->
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-6"
                    style="padding: 0;">
                    <h4 class="card-title">Theater Address</h4>
                    
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="t_address" name="t_address" aria-describedby="name"
                          placeholder="Theater Address">
                      </div>
                    
                  </div>
                  <div class="col-sm-12 col-md-12 col-lg-12"
                    style="padding: 0;">
                    <h4 class="card-title">Inline Custom Radios</h4>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio radiobutton" style="padding:0;">
                        <input type="radio" name="t_screen" id="r1" value="1" checked><label for="r1">1개관</label>
                        <input type="radio" name="t_screen" id="r2" value="2"><label for="r2">2개관</label>
                        <input type="radio" name="t_screen" id="r3" value="3"><label for="r2">3개관</label>
                        <input type="radio" name="t_screen" id="r4" value="4"><label for="r2">4개관</label>
                        <input type="radio" name="t_screen" id="r5" value="5"><label for="r2">5개관</label>
                        <input type="radio" name="t_screen" id="r6" value="6"><label for="r2">6개관</label>
                        <input type="radio" name="t_screen" id="r7" value="7"><label for="r2">7개관</label>
                        <input type="radio" name="t_screen" id="r8" value="8"><label for="r2">8개관</label>
                      </div>
                    </div>
                  </div>
                  <h4 class="card-title mt-3">Total Seats</h4>
                  <h6 class="card-subtitle">
                    자동계산
                    <code>Total Seats</code>
                    수정불가.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="t_seat" name="t_seat" readonly>
                      </div>
                    
                  </div>
                </div>
                <div class="col-lg-12 mb-3" style="text-align: right;">
                  <div class="btn-list">
                    
                    <button type="submit" class="btn btn-success">
                      <i class="fas fa-check"></i> Success
                    </button>
                  </div>
                </div>
              </div>
              </form>
                                
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
</div>

<script>
$(document).ready(function(){
  
  // 라디오버튼 클릭시 이벤트 발생
  $("input:radio[name=t_screen]").click(function(){

      if($("input[name=t_screen]:checked").val() == "1"){
           $("#t_seat").val('150');
      }else if($("input[name=t_screen]:checked").val() == "2"){
            $("#t_seat").val('300');
      }else if($("input[name=t_screen]:checked").val() == "3"){
        $("#t_seat").val('450');
      }else if($("input[name=t_screen]:checked").val() == "4"){
        $("#t_seat").val('600');
      }else if($("input[name=t_screen]:checked").val() == "5"){
        $("#t_seat").val('750');
      }else if($("input[name=t_screen]:checked").val() == "6"){
        $("#t_seat").val('900');
      }else if($("input[name=t_screen]:checked").val() == "7"){
        $("#t_seat").val('1050');
      }else if($("input[name=t_screen]:checked").val() == "8"){
        $("#t_seat").val('1200');
      }
  });
});
</script>
<%@ include file="../adminfooter.jsp"%>