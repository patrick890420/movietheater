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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">イベント修整</h4><!-- 수정 -->
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">イベント</a></li><!-- EVENT -->
<!--               <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">お知らせ</a></li>공지 -->
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
    
    <div class="col-xl-10 write36">
    <div class="card">
      <div class="card-body">

<!--           Table -->
<form name="admin" method="get" action="adminEventModifyPro.do" enctype="multipart/form-data" onsubmit="return check()">
<input type="hidden" name="event_cd" value="${eview.event_cd }">
  
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
            <option value="">イベント</option><!-- EVENT -->
          </select>
        </td>
      </tr>
      <tr>
        <th>題目</th><!-- 제목 -->
        <td><input class="form-control" type="text" name="title" value="${eview.title}"></td>
      </tr>
      <tr>
        <th class="adminwrite66">内容</th><!-- 내용 -->
        <td><textarea class="form-control" name="content" id="summernote" rows="8">${eview.content}</textarea></td>
      </tr>
    </tbody>
  </table>

<!-- button -->
<div class="adminbutton">
  <button type="submit" class="btn btn-outline-primary btn-rounded">
    <i class="fas fa-check"></i>&nbsp;修整
  </button>&nbsp;<!-- 수정 -->
  
  <a href="adminEventDelete.do?event_cd=${eview.event_cd}" onClick="return confirm('削除しますか？')"
       class="btn btn-outline-primary btn-rounded" id="delete_btn"><i class="fas fa-times"></i>削除
  </a>&nbsp;<!-- 삭제 -->
  
  <button type="reset" class="btn btn-outline-primary btn-rounded">書き直し</button>&nbsp;<!-- 다시쓰기 -->
  
  <button type="button" class="btn btn-outline-primary btn-rounded" onclick="location.href='adminEvent.do'">
    <i class="fas fa-list"></i>&nbsp;リスト
  </button><!-- 리스트(목록) -->
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

//summernote jquery
$(function(){
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
  });
  });//function
</script>
  
  <%@ include file="../adminfooter.jsp"%>