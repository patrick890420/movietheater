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
                    <th>Screen</th>
                    <th>Seat</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${athlist}" var="athlist" >
                  <tr>

                    <td><a href="/adm/adminScreenInfo.do?t_cd=${athlist.t_cd}">${athlist.t_cd }</a></td>
                    <td>${athlist.t_area}</td>
                    <td>${athlist.t_name}</td>
                    <td>${athlist.t_address}</td>
                    <td>${athlist.t_screen}</td>
                    <td>${athlist.t_seat}</td>
                    
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
              