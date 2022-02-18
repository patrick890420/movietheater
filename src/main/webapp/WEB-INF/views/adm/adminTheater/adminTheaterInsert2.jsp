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
                                    <li class="breadcrumb-item"><a href="adminTheaterInsert.do" class="text-muted">Theater</a></li>
                                    <li class="breadcrumb-item text-muted" aria-current="page">
                                    <a href="adminTheaterInsert.do" class="text-muted">Screen</a></li>
                                    <li class="breadcrumb-item"><a href="adminTheaterInsert.do" class="text-muted">Seat</a></li>
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
                        <h4 id="list-item-1" class="bg-primary text-white" style="padding:15px;">Screen info</h4>
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
                          id="t_area">
                          <option selected>Area Select</option>
                          <option value="1">1번째</option>
                          <option value="2">2번째</option>
                          <option value="3">3번째</option>
                          <option value="4">4번째</option>
                          <option value="5">5번째</option>
                          <option value="6">6번째</option>
                          <option value="7">7번째</option>
                          <option value="8">8번째</option>
                          <option value="9">9번째</option>
                          <option value="10">10번째</option>
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
                      <div class="custom-control custom-radio">
                        <input type="radio" value="1" class="custom-control-input"
                          id="t_screen" name="t_screen"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="t_screen">1개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation3"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation3">2개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation4"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation4">3개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation5"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation5">4개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation6"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation6">5개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation7"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation7">6개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation8"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation8">7개관</label>
                      </div>
                    </div>
                    <div class="form-check form-check-inline mt-2">
                      <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input"
                          id="customControlValidation9"
                          name="radio-stacked"> <label
                          class="custom-control-label"
                          for="customControlValidation9">8개관</label>
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
                          id="t_seat" name="t_seat" value="100" placeholder="Total Seats" readonly>
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
<%@ include file="../adminfooter.jsp"%>










<h4 id="list-item-2">Screen info</h4>
            <div class="col-sm-12 col-md-12 col-lg-12">
              <div class="card">
              <div id="Screeninfo">
                <div class="card-body" id="plustext">
                <button type="button" value="삭제" onclick="removeBox(this);" class="btn btn-danger btn-rounded" style="float:right"><i class=" fas fa-minus"></i> </button>
                  <h4 class="card-title">Screen Code</h4>
                  <h6 class="card-subtitle">
                    설정된
                    <code>Screen Code</code>
                    는 수정불가 입니다.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <form class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="nametext1" placeholder="Theater Code"
                          disabled>
                      </div>
                    </form>
                  </div>
                  <div class="col-sm-8 col-md-8 col-lg-8"
                    style="padding: 0;">
                    <h4 class="card-title">Screen Type</h4>
                    <h6 class="card-subtitle">
                      To use add
                      <code>.input-group-prepend</code>
                      class to the div
                    </h6>
                    <form>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <label class="input-group-text"
                            for="inputGroupSelect01">Options</label>
                        </div>
                        <select class="custom-select"
                          id="inputGroupSelect01">
                          <option selected>1-type</option>
                          <option value="1">2-type</option>
                          <option value="2">3-type</option>
                          <option value="3">4-type</option>
                        </select>
                      </div>
                    </form>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-6"
                    style="padding: 0;">
                    <form>
                      <div class="form-group mb-4">
                        <h4 class="card-title">Screen Name</h4>
                        <select class="custom-select mr-sm-2"
                          id="inlineFormCustomSelect">
                          <option selected>Screen Selcect</option>
                          <option value="1">1극장</option>
                          <option value="2">2극장</option>
                          <option value="3">3극장</option>
                          <option value="4">4극장</option>
                          <option value="5">5극장</option>
                          <option value="6">6극장</option>
                          <option value="7">7극장</option>
                          <option value="8">8극장</option>
                        </select>
                      </div>
                    </form>
                  </div>
                  <h4 class="card-title mt-3">Screen Seats</h4>
                  <h6 class="card-subtitle">
                    자동지정
                    <code>Screen Seats</code>
                    수정불가.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <form class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="nametext1" placeholder="Screen Seats"
                          disabled>
                      </div>
                    </form>
                  </div>
                </div>
                </div>
                <div class="col-lg-12 mb-3" style="margin-left: 10px;">
                  <div class="btn-list">
                    <form name="form" method="post">
                      <table>
                        <tr>
                          <td colspan="2" align="left" bgcolor="#FFFFFF">
                            <table>
                              <tr>
                                <td colspan="5" bgcolor="#FFFFFF"
                                  height="25" align="left">
                                  <button onclick="addBox()"
                                    class="btn btn-outline-primary waves-effect waves-light"
                                    type="button" value="innerHTML"
                                    onclick="setInnerHTML()">
                                    <span class="btn-label"><i
                                      class=" fas fa-plus"></i></span>
                                  </button>
                                  <font color="#FF0000">*</font>추가버튼
                                </td>
                              </tr>
                              <tr>
                              </tr>
                            </table>
                          </td>
                        </tr>
                      </table>
                      <div class="col-lg-12 mb-3" style="text-align: right;">
                  <div class="btn-list">
                    <button type="button" class="btn btn-success">
                      <i class="fas fa-check"></i> Success
                    </button>
                  </div>
                </div>
                    </form>
                  </div>
                </div>
                
              </div>