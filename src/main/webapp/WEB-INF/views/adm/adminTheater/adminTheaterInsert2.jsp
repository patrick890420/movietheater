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
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Screen</li>
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
                    <form name="adminteatherInsertPro2" action="adminteatherInsertPro2.do" method="post" enctype="multipart/form-data">
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                    <div class="card">
                    <h4 id="list-item-1" class="bg-primary text-white" style="padding:15px;">Seat info</h4>
              <div id="Screeninfo">
                <div class="card-body" id="plustext">
                  <input type="hidden" id="thcode" name="t_cd" value="${thcode}">
                <button type="button" value="삭제" onclick="removeBox(this);" class="btn btn-danger btn-rounded" style="float:right"><i class=" fas fa-minus"></i> </button>
                  <h4 class="card-title">Screen Code</h4>
                  <h6 class="card-subtitle">
                    설정된
                    <code>Screen Code</code>
                    는 수정불가 입니다.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <div class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="nametext1" placeholder="Theater Code"
                          disabled>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-5 col-md-5 col-lg-5"
                    style="padding: 0;">
                    <h4 class="card-title">Screen Type</h4>
                    <h6 class="card-subtitle">
                      To use add
                      <code>.input-group-prepend</code>
                      class to the div
                    </h6>
                    <div>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <label class="input-group-text"
                            for="inputGroupSelect01">Options</label>
                        </div>
                        <select class="custom-select"
                          id="inputGroupSelect01" name="screen_type">
                          <option selected>screen-type Select</option>
                          <option value="1-type">1-type</option>
                          <option value="2-type">2-type</option>
                          <option value="3-type">3-type</option>
                          <option value="4-type">4-type</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <div>
                      <div class="form-group mb-4">
                        <h4 class="card-title">Screen Name</h4>
                        <select class="custom-select mr-sm-2"
                          id="inlineFormCustomSelect" name="screen_name">
                          <option selected>Screen Select</option>
                          <option value="1극장">1극장</option>
                          <option value="2극장">2극장</option>
                          <option value="3극장">3극장</option>
                          <option value="4극장">4극장</option>
                          <option value="5극장">5극장</option>
                          <option value="6극장">6극장</option>
                          <option value="7극장">7극장</option>
                          <option value="8극장">8극장</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <h4 class="card-title mt-3">Screen Seats</h4>
                  <h6 class="card-subtitle">
                    자동지정
                    <code>Screen Seats</code>
                    수정불가.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <div class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="nametext1" name="seat_amount" value="150" placeholder="Screen Seats"
                          readonly>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
                <div class="col-lg-12 mb-3" style="margin-left: 10px;">
                  <div class="btn-list">
                    
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
                    <button type="submit" class="btn btn-success">
                      <i class="fas fa-check"></i> Success
                    </button>
                  </div>
                </div>
                   
                  </div>
                </div>
              </div>
              </form>
                    </div>
                </div>
            </div>
</div>
<script>
function addBox(){
  var divClone = document.getElementById("plustext").cloneNode(true);
  var addbox = document.getElementById("Screeninfo");
  addbox.append(divClone);
 }
function removeBox(obj){
  document.getElementById('Screeninfo').removeChild(obj.parentNode);
}
</script>
<%@ include file="../adminfooter.jsp"%>
              