<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css" type="text/css">

<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Simple Sidebar - Start Bootstrap Template</title>


<div class="d-flex" id="wrapper" style="width: 1536px; margin: 0 auto;"> <!-- mypage.jsp 보고 추가함 ㅎ -->
  <!-- Sidebar-->

  <div class="border-end bg-white" id="sidebar-wrapper"
    style="margin-left: 30px;">
    <div class="sidebar-heading border-bottom bg-light"
      style="padding: 20px 16px;">My page</div>
    <!-- margin-top: 70px; -->
    <div class="list-group list-group-flush">
      <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="memberUp.do">アカウント管理</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="myreser.do">私の予約</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mycash.do">決済リスト</a> <a
        class="list-group-item list-group-item-action list-group-item-light p-3"
        href="mypass.do">パスワード変更</a>
    </div>
  </div>
  <!-- Page content wrapper-->
  <div id="page-content-wrapper">
    <!-- Top navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="width: 1180px; border: groove !important; margin-bottom: 10px;">
      <div class="container-fluid">
        <div class="main-content">
          <div class="container mt-7">
            <!-- Table -->
            <div class="row" style="margin-top: -6%;">
              <div class="col-xl-12 m-auto order-xl-1">
                <div class="card-body">
                  <form class="formform" name="formform" style="margin-left: 300px;" method="post" action="mypasspro.do">
                    <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
                    <input type="hidden" value="${member.userid }">
                    <h2 style="margin-top: 80px;">Changing the password.</h2>
                    <div class="pl-lg-12">
                      <div class="row">
                        <div class="col-lg-12" style="margin-top: 50px;">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-first-name">パスワードを変更するには、<br> 以前のパスワードを入力してください。</label>
                              
                              <!-- name=userpw 어디에 줘야 하지 --> 
                              <input type="password" id="prePass" class="form-control form-control-alternative"
                              placeholder="既存のパスワードを入力してください。" style="margin-top: 30px;" name="prePw">
                              <input type="password" id="userPass" class="form-control form-control-alternative"
                              placeholder="新しいパスワードを入力してください。" style="margin-top: 30px;" name="newPw" >
                               <input type="password" id="userPass2" class="form-control form-control-alternative"
                              placeholder="新しいパスワードを再入力してください。" style="margin-top: 30px;" name="newPw2">
                              <button type="submit" class="input__btn4" id="pass_button" name="pass_button">確定</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <hr class="my-4">
                    <!-- Description -->
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  </nav>

</div>

<script type="text/javascript">
  $(document).ready(function() {
    $("#pass_button").on("click", function() {

      if ($("#prePass").val() == "") {
        alert("既存のパスワードを入力してください。");
        $("#prePass").focus();
        return false;
      }
      if ($("#userPass").val() == "") {
        alert("新しいパスワードを入力してください。");
        $("#userPass").focus();
        return false;
      }
      if ($("#userPass2").val() == "") {
        alert("新しいパスワード(確認入力）を入力してください。");
        $("#userPass2").focus();
        return false;
      }

      if ($("#userPass").val() != $("#userPass2").val()) {
        alert("パスワードが一致しません。");
        //document.form.userPass2.value = "";
        // document.form.userPass2.focus();
        return false;
      }
      
      else {
        alert("パスワードの変更が完了しました。")
      }

    });
  })

  //기존 비밀번호와 바꿀 비밀번호가 다른가 ? 확인하는 것이 필요함
  //아직은 뭘 입력하든 pw error가 뜬다,,,

  // 여기에는 나중에 기ㅁ존비밀번호 유효성 검사용 Ajax 구문  넣어주면 될듯 
  /* $("#pass_button").click(function() {
    var pwCheck = $("input[name=userpw]").val();
    $.ajax({
      type : "post",
      url : '/mypage/mypasspro.do',
      dataType : "json",
      success : function(data) {
        
       // location.href="/index.do";
      },
      error : function() {
        alert("pw error");
      }
    }); //ajax end
  }); //click end */
</script>

<!--       success : function(data) { -->
<!--         if (data == 0) { -->
<!--           if ($("#userPass").val() != "") { -->
<!--             alert("가능한。"); -->
<!--           } -->
<!--         } else { -->
<!--           alert("使用不可能なアカウントです。"); -->
<!--           $("#userPass").val(""); -->
<!--           $("#userPass").focus(); -->
<!--           return false(); -->
<!--         } -->
<!--       }, -->

<%@ include file="../footer.jsp"%>

