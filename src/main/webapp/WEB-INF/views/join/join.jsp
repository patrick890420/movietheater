<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
  data-setbg="/resources/img/logintitle.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center"></div>
    </div>
  </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Signup Section Begin -->
<section class="signup spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="login__form" style="text-align: center;">
          <h3 style="font-size: 50px;">Sign Up</h3>
          <form action="/join/joinPro.do" method="post" id=join_form  pg)
          style="padding: 50px 300px; background:url(/resources/img/auth-bg2.jpg); padding-top: 100px;">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <div class="input__item">
            <input type="text" placeholder="이름을 입력해 주세요." id="userName" name="username"> 
            <span class="icon_profile"></span>
          </div>
          <div class="input__item">
            <input type="text" placeholder="아이디를 입력해 주세요." id="userId" name="userid" maxlength='15'>
            <span class="icon_id"></span>
            <div id="checkMsg"></div>
          </div>
          
 <!--          <div class="input__btn">
            <input type="button" id="checkbtn" name="mail_btn" class="input__btn2" value='중복확인'>
          </div> -->

            <div class="input__item">
              <input type="text" placeholder="이메일을 입력해 주세요." id="userMail" name="email">
              <span class="icon_mail"></span>
            </div>
            
           <!--  
           <div class="input__btn">
              <input type="button" class="input__btn2" value='인증메일전송'>
            </div>   -->
            
            <div class="input__item">
              <input type="text" maxlength="13"
                placeholder="전화번호를 입력해 주세요." id="userTel" name="phone">
              <!-- 만약 3개 창 만들면~ pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" -->
              <span class="icon_phone"></span>
            </div>
            <div class="input__item">
              <input type="password" placeholder="비밀번호를 입력해 주세요." id="userPass" name="userpw"> 
              <span class="icon_lock"></span>
            </div>
            <div class="input__item">
              <input type="password" placeholder="비밀번호를 재입력 해 주세요." id="userPass2">
              <span class="icon_lock"></span>
            </div>
            <div class="input__item">
              <input type="text" placeholder="생년월일을 입력해 주세요. 예)19951005" id="birth" name="birth" maxlength="8">
              <span class="icon_calendar"></span>
            </div>
            
            <div class="input__item" style="background-color: white;">
              <span class="icon_heart_alt"></span>
              <div class="genderchoice">
                <input type="radio" value="2" class="gender" name="gender">
                  woman
                <input type="radio" value="1" class="gender" name="gender">
                  man
              </div>
            </div>
            <ul class="join_box">
              <li class="checkBox check02">
                <ul class="clearfix">
                  <li>이용약관 동의(필수)</li>
              </li>
            </ul>
            <textarea name="" id="">
                이 약관은 행운의 편지 어쩌고
                헠헠 마라탕 중국당면
                ㅇㅇㅇ
                안녕하세요
                스크롤
            </textarea>
            <input type="checkbox" id="box1" name="box1"> 약관에 동의합니다. &nbsp;&nbsp;
            <button type="submit" class="btn btn-success" id="join_button" name="join_button">회원가입</button>
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
        alert("성명을 입력해주세요.");
        $("#userName").focus();
        return false;
      }
      if ($("#userId").val() == "") {
        alert("아이디를 입력해주세요.");
        $("#userId").focus();
        return false;
      }
      if ($("#userMail").val() == "") {
        alert("이메일을 입력해주세요.");
        $("#userMail").focus();
        return false;
      }
      if ($("#userTel").val() == "") {
        alert("전화번호를 입력해주세요.");
        $("#userTel").focus();
        return false;
      }
      if ($("#userPass").val() == "") {
        alert("비밀번호를 입력해주세요.");
        $("#userPass").focus();
        return false;
      }
      if ($("#userPass2").val() == "") {
        alert("비밀번호를 재입력해주세요.");
        $("#userPass2").focus();
        return false;
      }
      if ($("#userPass").val() != $("#userPass2").val()) {
        alert("두 비밀번호가 맞지 않습니다.");
        //document.form.userPass2.value = "";
       // document.form.userPass2.focus();
        return false;
      }
      if($("#birth").val() == ""){ 
        alert("생일을 입력해 주세요"); 
        return false;
        }
      
     //if(!reg_num.test(birth.value)) { alert("생일은 숫자만 입력이 가능합니다."); return false;

      
      if($("input[name=gender]:radio:checked").length == 0){
        alert('성별을 선택해주세요');
        return false;
       }

      if (!$("input:checked[id='box1']").is(":checked")) {
        alert("이용약관 동의가 필요합니다."); 
        return false;
      }
    
    });
  })
  

  //아이디 중복
  $("#userId").blur(function(){
      var idCheck = $("input[name=userid]").val();
      $.ajax({
         type : "get",
         url : '/join/idChk.do?userid='+idCheck,
         dataType : "json",
         success : function(data) {
           if (data == 0) {
               if ($("#userId").val() != "") {
               alert("사용 가능한 아이디 입니다.");
                 }
            } else{
              alert("사용 불가능한 아이디 입니다.");
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

