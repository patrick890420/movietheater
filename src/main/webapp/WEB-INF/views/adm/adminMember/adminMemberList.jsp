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
         member INFO
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
    <!-- basic table -->
<!--     <div class="row"> -->
<!--       <div class="col-12"> -->
<!--         <div class="card"> -->
<!--           <div class="card-body"> -->
<!--             <h4 class="card-title">会員登録</h4> -->
<!--             <h6 class="card-subtitle"> -->
<!--                                         こちらでは新しい会員を登録することができます。 -->
<!--               <code> $().DataTable();</code> -->
<!--               DataTable 사용법 -->
<!-- <!--          <code> $("#테이블id").DataTable();</code> --> -->
<!--               . You can refer full documentation from here  -->
<!--               <a href="https://datatables.net/">Datatables</a> -->
<!--             </h6> -->
<!--             <div class="table-responsive"> -->
<!--               <table id="zero_config" class="table table-striped table-bordered no-wrap"> -->
<!--                 <thead> -->
<!--                   <tr> -->
<!--                     <th>userId</th> -->
<!--                     <th>userPw</th> -->
<!--                     <th>userName</th> -->
<!--                     <th>birth</th> -->
<!--                     <th>gender</th> -->
<!--                     <th>phone</th> -->
<!--                     <th>email</th> -->
<!--                   </tr> -->
<!--                 </thead> -->
<!--                 <tbody> -->
<!--                   <tr> -->
<!--                     <td>Tiger Nixon</td> -->
<!--                     <td>System Architect</td> -->
<!--                     <td>Edinburgh</td> -->
<!--                     <td>61</td> -->
<!--                     <td>2011/04/25</td> -->
<!--                     <td>$320,800</td> -->
<!--                     <td>d@d.com</td> -->
<!--                   </tr> -->
<!--               </table> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
    <!-- multi-column ordering -->
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">会員リスト</h4>
            <h6 class="card-subtitle">
                                     こちらで会員のリストを見られます。
              <code> columns.orderData</code>
              option.
            </h6>
            <div class="table-responsive">
              <table id="multi_col_order"
                class="table table-striped table-bordered display no-wrap"
                style="width: 100%">
                <thead>
                  <tr>
                    <th>userId</th>
                    <th>userPw</th>
                    <th>userName</th>
                    <th>birth</th>
                    <th>gender</th>
                    <th>phone</th>
                    <th>email</th>
                  </tr> 
                </thead>
                <tbody>
                <c:forEach items="${memlist}" var="memlist">
                  <tr>
                    <td>${memlist.userid}</td>
                    <td>${memlist.userpw}</td>
                    <td>${memlist.username}</td>
                    <td>${memlist.birth}</td>
                    <td>${memlist.gender}</td>
                    <td>${memlist.phone}</td>
                    <td>${memlist.email}</td>
                  </tr>
                  </c:forEach>
                </tbody>
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