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
        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">글쓰기</h4>
        <div class="d-flex align-items-center">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb m-0 p-0">
              <li class="breadcrumb-item"><a href="admin.do" class="text-muted">Home</a></li>
              <li class="breadcrumb-item"><a href="adminEvent.do" class="text-muted">공지사항</a></li>
              <li class="breadcrumb-item"><a href="adminNotice.do" class="text-muted">이벤트</a></li>
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
<form name="admin" method="get" action="adminBoardWritePro.do" enctype="multipart/form-data" onsubmit="return check()">
  <table class="table table-striped table-bordered no-wrap dataTable">
    <colgroup>
      <col width= "20%">
      <col width= "*">
    </colgroup>
    <tbody class="write56">
      <tr>
        <th>선택</th>
        <td>
          <select name="choice" aria-controls="zero_config" class="form-control form-control-sm">
            <option value="">선택</option>
            <option value="E">EVENT</option>
            <option value="N">공지사항</option>
          </select>
        </td>
      </tr>
      <tr>
        <th>제목</th>
        <td><input class="form-control" type="text" name="title" placeholder="제목"></td>
      </tr>
      <tr>
        <th class="write66">내용</th>
        <td><textarea class="form-control" name="content" id="summernote" rows="8" placeholder="내용"></textarea></td>
      </tr>
      <tr>
        <th>첨부</th>
        <td><input class="form-control" type="file" name="uploadFile" id="appfile"></td>
      </tr>
    </tbody>
  </table>

<!-- button -->
<div class="write77">
  <button type="submit" class="btn btn-outline-primary btn-rounded">
    <i class="fas fa-check"></i>&nbsp;저장
  </button>&nbsp;
  <button type="reset" class="btn btn-outline-primary btn-rounded">다시쓰기</button>&nbsp;
  <button type="button" class="btn btn-outline-primary btn-rounded" onclick="location.href='admin.do'">
    <i class="fas fa-list"></i>&nbsp;목록
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
function check() {
  if(admin.title.value=="") {
    alert("제목을 입력");
    portfolio.title.focus();
    return false;
  }
  if(admin.content.value=="") {
    alert("내용을 입력");
    portfolio.content.focus();
    return false;
  }
  if($("#appfile").val()==""){
    alert("첨부파일 추가 하세요");
    $("#appfile").focus();
    return false;
  }
  if($("#appfile").val() !=""){
    var ext=$("#appfile").val().split().pop().toLowerCase();
      if($.inArray(ext,['gif','png','jpg','jpeg'])== -1){
        alert("이미지만 첨부 가능 합니다");
        $("#appfile").val("");
        return false;
      }
      }
      return true;
      }
      
      var imgFile = $('#appfile').val();
      var fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf)$/;
      var maxSize = 20 * 1024 * 1024;
      var fileSize;

      if($('#appfile').val() == "") {
        alert("첨부파일은 필수!");
        $("#appfile").focus();
        return false;
      }

      if(imgFile != "" && imgFile != null) {
        fileSize = document.getElementById("appfile").files[0].size;
          if(!imgFile.match(fileForm)) {
           alert("이미지 파일만 업로드 가능");
            return;
            
      }else if(fileSize > maxSize) {
        alert("파일 사이즈는 20MB까지 가능");
        return;
      }
      }
      return true;
</script>
<script>

//summernote jquery
$(function(){
  $('#summernote').summernote({
  height: 300,
  fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
  fontNamesIgnoreCheck : [ '맑은고딕' ],
  focus: true,
  
  //이미지 첨부 코드 /숙제
  callbacks: {
  onImageUpload: function(files, editor, welEditable) {
              for (var i = files.length - 1; i >= 0; i--) {
               sendFile(files[i], this);
              }
          }
  }
  
  });
  

function sendFile(file, el) {
  var form_data = new FormData();
         form_data.append('file', file);
         $.ajax({
           data: form_data,
           type: "POST",
           url: 'upload.do',
           cache: false,
           contentType: false,
           enctype: 'multipart/form-data',
           processData: false,
           success: function(img_name) {
             alert(img_name);
             $(el).summernote('editor.insertImage', img_name);
           }
         });
      }
    });
</script>
  
  <%@ include file="../adminfooter.jsp"%>