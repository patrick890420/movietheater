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
          Payment INFO
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
                    <th>DATE</th>
                    <th>CHARGE</th>
                    <th>METHOD</th>
                    <th>STATUS</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${payment}" var="payment">
                  <tr>
                    <td>${payment.tkt_cd}</td>
                    <td>${payment.id}</td>
                    <td>${payment.tkt_date}</td>
                    <td><fmt:formatNumber value="${payment.charge}" pattern="#,###" /></td>
                    <c:if test="${payment.pay_method == 1}">
                      <td>
                        Card
                      </td>
                    </c:if>
                    <c:if test="${payment.pay_status == 0}">
                      <td>Unpaid</td>
                    </c:if>  
                    <c:if test="${payment.pay_status == 1}">
                      <td>Completion</td>
                    </c:if>  
                  </tr>
                  </c:forEach>
                </tbody>
                <tfoot>
                  <tr>
                    <th>CODE</th>
                    <th>ID</th>
                    <th>DATE</th>
                    <th>CHARGE</th>
                    <th>METHOD</th>
                    <th>STATUS</th>
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