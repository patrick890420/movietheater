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


<div class="d-flex" id="wrapper">
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
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="width: 1180px;">
      <div class="container-fluid">
        <div class="main-content">
          <div class="container mt-7">
            <!-- Table -->
            <div class="row" style="margin-top: -6%;">
              <div class="col-xl-12 m-auto order-xl-1">
                <div class="card-body" style="margin-left: 50px; text-align: center;">
                  <form class="formform" name="formform" style="margin-left: 300px;" method="post" action="byebyespro.do">
                    <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
                    <input type="hidden" value="${member.userid }">
                    <h2 style="margin-top: 80px;">会員退会</h2>
                    <div class="pl-lg-12">
                      <div class="row">
                        <div class="col-lg-12" style="margin-top: 50px;">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-first-name">会員退会のためには<br> パスワードを入力してください。</label>
                              
                              <!-- name=userpw 어디에 줘야 하지 --> 
                              <input type="password" id="userPass" class="form-control form-control-alternative"
                              placeholder="パスワードを入力してください。" style="margin-top: 30px;" name="prePw">
                              <button type="submit" class="input__btn5" id="bye_button" name="bye_button">退会</button>
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
    $("#bye_button").on("click", function() {

      if ($("#userPass").val() == "") {
        alert("既存のパスワードを入力してください。");
        $("#userPass").focus();
        return false;
      }
      

    });
  })

  //기존 비밀번호와 바꿀 비밀번호가 다른가 ? 확인하는 것이 필요함
  //아직은 뭘 입력하든 pw error가 뜬다,,,

  
//   $("#bye_button").click(function() {
//     var pwCheck = $("input[name=userpw]").val();
//     $.ajax({
//       type : "post",
//       url : '/mypage/byebyespro.do',
//       dataType : "json",
//       success : function(data) {
       
        
//       },
//       error : function() {
//         alert("pw error");
//       }
//     }); //ajax end
//   }); //click end
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

