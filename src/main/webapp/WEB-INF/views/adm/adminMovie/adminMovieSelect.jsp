<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
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
          Movie INFO
        </h4>
        <div class="d-flex align-items-center">
        </div>
      </div>
      <div class="col-5 align-self-center">
        <div class="customize-input float-right">
          <select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
            <option selected>Aug 19</option>
            <option value="1">July 19</option>
            <option value="2">Jun 19</option>
          </select>
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
            <h4 class="card-title">영화 목록</h4>
            <h6 class="card-subtitle"> </h6>
            <div class="table-responsive">
              <table id="default_order"  class="table table-striped table-bordered display no-wrap" style="width: 100%">
                <thead>
                  <tr>
                    <th>CODE</th>
                    <th>TITLE</th>
                    <th>SUBTITLE</th>
                    <th>DATE</th>
                    <th>RATE</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="mlist" >
                  <tr>
                    <td>${mlist.m_cd }</td>
                    <td><a href="/adm/adminMovieInfoInsert.do?m_cd=${mlist.m_cd }">${mlist.title}</a></td>
                    <td>${mlist.subtitle}</td>
                    <td>${mlist.rdate}</td>
                    <td>${mlist.rate}</td>
                  </tr>
                  </c:forEach>
                </tbody>
                <tfoot>
                  <tr>
                    <th>CODE</th>
                    <th>TITLE</th>
                    <th>SUBTITLE</th>
                    <th>DATE</th>
                    <th>RATE</th>
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
  <!-- ============================================================== -->
  <!-- End Container fluid  -->
  <!-- ============================================================== -->
  <%@ include file="../adminfooter.jsp"%>