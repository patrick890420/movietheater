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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">書き物</h4><!-- 글쓰기 -->
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">イベント</a></li><!-- EVENT -->
              <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">お知らせ</a></li><!-- 공지 -->
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
    
    <div class="col-xl-10 adminwrite36">
    <div class="card">
      <div class="card-body">

<!--           Table -->
<form id="borad" name="admin" method="post" action="adminBoardWritePro.do" onsubmit="return check()">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  <table class="table table-striped table-bordered no-wrap dataTable">
    <colgroup>
      <col width= "20%">
      <col width= "*">
    </colgroup>
    <tbody class="adminwrite47">
      <tr>
        <th>選択</th><!-- 선택 -->
        <td>
          <select name="choice" aria-controls="zero_config" class="form-control form-control-sm">
            <option value="">選択</option><!-- 선택 -->
            <option value="E">イベント</option><!-- EVENT -->
            <option value="N">お知らせ</option><!-- 공지 -->
          </select>
        </td>
      </tr>
      <tr>
        <th>題目</th><!-- 제목 -->
        <td><input class="form-control" type="text" name="title" placeholder="題目"></td>
      </tr>
      <tr>
        <th class="adminwrite66">内容</th><!-- 내용 -->
        
        <td>
        <textarea class="form-control summernote" name="content" id="summernote" rows="8" placeholder="内容"></textarea>
        </td>
      </tr>
<!--       <tr> -->
<!--         <th>첨부</th> -->
<!--         <td><input type="file" name="uploadFile" id="appfile"></td> -->
<!--       </tr> -->
    </tbody>
  </table>

<!-- button -->
<div class="adminbutton">
  <button type="submit" class="btn btn-outline-primary btn-rounded">
    <i class="fas fa-check"></i>&nbsp;貯蔵<!-- 저장 -->
  </button>&nbsp;
  <button type="reset" class="btn btn-outline-primary btn-rounded">書き直し</button>&nbsp;<!-- 다시쓰기 -->
  <button type="button" class="btn btn-outline-primary btn-rounded" onclick="location.href='adminNotice.do'">
    <i class="fas fa-list"></i>&nbsp;リスト<!-- 리스트 -->
  </button>
</div>
</form>
  
</div><!-- card-body -->
</div> <!-- end card-body-->
</div> <!-- end card-->
</div> <!-- col-xl-12 -->
    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
</div><!-- page-wrapper -->
  <!-- ============================================================== -->
  <!-- End Container fluid  -->
  <!-- ============================================================== -->
  
<script>

$(document).ready(function() {
  $('#summernote').summernote({
  height: 300,
  fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
  fontNamesIgnoreCheck : [ '맑은고딕' ],
  focus: true,
  
  callbacks: {
  onImageUpload: function(files, editor, welEditable) {
              for (var i = files.length - 1; i >= 0; i--) {
               sendFile(files[i], this);
              }
          }
  }
  })

  function sendFile(file,  el) {
    var form_data = new FormData();
    var csrfHeaderName = "${_csrf.headerName}";
    var csrfTokenValue = "${_csrf.token}";
    //스프링 시큐리티 이용하면 CSRF 토큰을 같이 전송해야한다
    $(document).ajaxSend(function(e, xhr, options) {
          xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
       });
       form_data.append('file', file);
       
       $.ajax({
         //data: form_data,
         type: "get",
         url: '/adm/boardImage.do?file='+file.name,
         cache: false,
         contentType: false,
         enctype: 'multipart/form-data',
         processData: false,
         success: function(img_name) {
           alert(img_name);
          $(el).summernote('editor.insertImage',img_name.url);
         }, error: function (e) { 
           // 전송 후 에러 발생 시 실행 코드
         }  
       });
  }

});//function
  
</script>
<%@ include file="../adminfooter.jsp"%>