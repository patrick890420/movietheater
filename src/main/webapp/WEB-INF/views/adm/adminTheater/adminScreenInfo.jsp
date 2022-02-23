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
                                    <a href="adminTheaterInsert2.do" class="text-muted">Screen</a></li>
                                    <li class="breadcrumb-item active">Seat</li>
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
                <div class="card-body">
                  <div class="col-sm-12 col-md-12 col-lg-12" style="padding:0;">
                  <table id="default_order"  class="table table-striped table-bordered display no-wrap" style="width: 100%">
                <thead>
                  <tr>
                    <th>CODE</th>
                    <th>Area</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Address</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${t_slist}" var="t_slist" >
                  <tr>
                    <td><a href="adminSchedule.do">${t_slist.screen_cd}</a></td>
                    <td>${t_slist.t_cd }</td>
                    <td>${t_slist.screen_type}</td>
                    <td>${t_slist.screen_name}</td>
                    <td>${t_slist.seat_amount}</td>

                    
                  </tr>
                  </c:forEach>
                </tbody>
                
              </table>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </div>

<%@ include file="../adminfooter.jsp"%>
              