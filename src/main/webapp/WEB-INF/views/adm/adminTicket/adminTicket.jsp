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
          Ticketing INFO
        </h4>
        <div class="d-flex align-items-center">
        </div>
      </div>
      <div class="col-5 align-self-center">
        <div class="customize-input float-right">
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
    <!-- order table -->
    <!-- multi-column ordering -->
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title"></h4>
            <h6 class="card-subtitle"> </h6>
            <div class="table-responsive">
              <table id="ticketTable"  class="table table-striped table-bordered display no-wrap" style="width: 100%">
                <thead>
                  <tr>
                    <th>CODE</th>
                    <th>ID</th>
                    <th>MOVIE</th>
                    <th>DATE</th>
                    <th>CANCEL</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${ticket}" var="ticket">
                  <tr>
                    <td>${ticket.tkt_cd}</td>
                    <td>${ticket.id}</td>
                    <td>${ticket.title}</td>
                    <td>${ticket.tkt_date}</td>
                    <td><button class="btn btn-danger" value="キャンセル" onclick="cancelPay();"></button></td>
                  </tr>
                  </c:forEach>
                </tbody>
                <tfoot>
                  <tr>
                    <th>CODE</th>
                    <th>ID</th>
                    <th>MOVIE</th>
                    <th>DATE</th>
                    <th>CANCEL</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
  </div>
</div>

  <!-- ============================================================== -->
  <!-- End Container fluid  -->
  <!-- ============================================================== -->
  <%@ include file="../adminfooter.jsp"%>