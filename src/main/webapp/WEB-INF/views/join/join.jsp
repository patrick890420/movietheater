<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
  style="background-color: #212529;">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="normal__breadcrumb__text">
          <h2 style="color: #fff;">Sign up</h2>
        </div>
      </div>
    </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Signup Section Begin -->
<section class="signup spad" style="background: url(/resources/img/login.jpg);">
  <div class="container">
    <div class="row">
      <div class="col-lg-12" style="margin-left: -60px;">
        <div class="login__form" style="text-align: center;">
        
          <form action="/join/joinPro.do" method="post" id=join_form
            style="padding: 50px 300px; background:#000000e3; padding-top: 100px; border: groove;">
            <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
            <div class="input__item">
              <input type="text" placeholder="お名前"
                id="userName" name="username"> <span
                class="icon_profile"></span>
            </div>
            <div class="input__item">
              <input type="text" placeholder="ユーザーID" id="userId" name="userid" maxlength='15'> 
              <span class="icon_id"></span>
              <div id="checkMsg"></div>
            </div>

            <!--          <div class="input__btn">
            <input type="button" id="checkbtn" name="mail_btn" class="input__btn2" value='중복확인'>
          </div> -->

            <div class="input__item">
              <input type="text" placeholder="メールアドレス"
                id="userMail" name="email"> <span
                class="icon_mail"></span>
            </div>

            <!--  
           <div class="input__btn">
              <input type="button" class="input__btn2" value='인증메일전송'>
            </div>   -->

            <div class="input__item">
              <input type="text" maxlength="13"
                placeholder="電話番号 例)0901234567" id="userTel" name="phone">
              <!-- 만약 3개 창 만들면~ pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" -->
              <span class="icon_phone"></span>
            </div>
            <div class="input__item">
              <input type="password" placeholder="パスワード"
                id="userPass" name="userpw"> <span
                class="icon_lock"></span>
            </div>
            <div class="input__item">
              <input type="password" placeholder="パスワード再入力"
                id="userPass2"> <span class="icon_lock"></span>
            </div>
            <div class="input__item">
              <input type="text" placeholder="生年月日 例)1995-05-05"
                id="birth" name="birth"> <span
                class="icon_calendar"></span>
            </div>

            <div class="input__item" class="radisol"
              style="background-color: white; border: solid #b7b7b7;">
              <span class="icon_heart_alt"></span>
              <div class="genderchoice">
                <input type="radio" value="2" class="gender"
                  name="gender"> 女性 <input type="radio"
                  value="1" class="gender" name="gender"> 男性
              </div>
            </div>

            <div class="row">
              <div class="col-lg-12">

                <div id="accordion" class="custom-accordion mb-4">

                  <div class="card mb-0">
                    <div class="card-header" id="headingOne">
                      <h5 class="m-0">
                        <a
                          class="custom-accordion-title d-block pt-2 pb-2"
                          data-toggle="collapse" href="#collapseOne"
                          aria-expanded="true"
                          aria-controls="collapseOne"> 会員規約  <span
                          class="float-right"><i
                            class="mdi mdi-chevron-down accordion-arrow"></i></span>
                        </a>
                      </h5>
                    </div>
                    <div id="collapseOne" class="collapse show"
                      aria-labelledby="headingOne"
                      data-parent="#accordion" style="">
                      <div class="">
                        <textarea rows="" cols=""
                          style="width: 100%; border-block: none; margin-left: -3px; font-size: 15px; padding-bottom: 30px;"> jslグループ株式会社（以下「jsl」といいます。）、その子会社、および関連会社で構成されるjslグループ（以下「jslグループ」といいます。）は、お客様に最適でユニークなサービスを提供したいと考えており、グローバルに展開する楽天グループのサービスに容易にアクセスしていただけるように、 シングル・ログイン機能を含む共通IDプログラム（以下「jsl ID」といいます。）を提供しています。 お客様は、jslが定めるjsl会員規約（以下「本規約」といいます。）に基づいてアカウント（以下「アカウント」といいます。）を作成し、会員サービスをご利用いただくことができます。
                         </textarea>
                      </div>
                    </div>
                  </div>
                  <!-- end card-->

                </div>
                <!-- end custom accordions-->
              </div>
              <!-- end col -->

            </div>
            <!-- end .mb-4-->
            <input type="checkbox" id="box1" name="box1" style="zoom: 1.2; width: 30px;"><span style="color:white;">同意します。</span>&nbsp;&nbsp;
            <button type="submit" class="btn btn-primary" id="join_button" name="join_button">会員登録へ</button>
        </div>
        <!-- end col -->

      </div>


      </form>
    </div>
  </div>
  </div>
  </div>
</section>


<!-- Signup Section End -->

<script type="text/javascript">
  $(document).ready(function() {
    $("#join_button").on("click", function() {

      if ($("#userName").val() == "") {
        alert("氏名を入力してください。");
        $("#userName").focus();
        return false;
      }
      if ($("#userId").val() == "") {
        alert("ユーザIDを入力してください。");
        $("#userId").focus();
        return false;
      }
      if ($("#userMail").val() == "") {
        alert("メールアドレスを入力してください。");
        $("#userMail").focus();
        return false;
      }
      if ($("#userTel").val() == "") {
        alert("電話番号を入力してください。");
        $("#userTel").focus();
        return false;
      }
      if ($("#userPass").val() == "") {
        alert("パスワードを入力してください。");
        $("#userPass").focus();
        return false;
      }
      if ($("#userPass2").val() == "") {
        alert("パスワード(確認入力）を入力してください。.");
        $("#userPass2").focus();
        return false;
      }
      if ($("#userPass").val() != $("#userPass2").val()) {
        alert("パスワードが一致しません。");
        //document.form.userPass2.value = "";
        // document.form.userPass2.focus();
        return false;
      }
      if ($("#birth").val() == "") {
        alert("お誕生日を入力してください。");
        return false;
      }

      //if(!reg_num.test(birth.value)) { alert("생일은 숫자만 입력이 가능합니다."); return false;

      if ($("input[name=gender]:radio:checked").length == 0) {
        alert('性別を選択してください。');
        return false;
      }

      if (!$("input:checked[id='box1']").is(":checked")) {
        alert("会員規約の同意は必須です。");
        return false;
      }

    });
  })

  //아이디 중복
  $("#userId").blur(function() {
    var idCheck = $("input[name=userid]").val();
    $.ajax({
      type : "get",
      url : '/join/idChk.do?userid=' + idCheck,
      dataType : "json",
      success : function(data) {
        if (data == 0) {
          if ($("#userId").val() != "") {
            alert("使用可能なアカウントです。");
          }
        } else {
          alert("使用不可能なアカウントです。");
          $("#userId").val("");
          $("#userId").focus();
          return false();
        }
      },
      error : function() {
        alert("id error");
      }
    }); //ajax end
  }); //blur end
  
  
  
</script>




<%@ include file="../footer.jsp"%>

