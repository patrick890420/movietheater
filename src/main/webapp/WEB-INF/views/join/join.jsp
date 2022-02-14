<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<form action="#" id=join_form onsubmit="return checkAll()"
						style="padding: 50px 300px; background: antiquewhite; padding-top: 100px;">
						
						
						<div class="input__item">
							<input type="text" placeholder="이름을 입력해 주세요." id="userName"
								name="userName"> <span class="icon_profile"> </span>
						</div>

						<!-- 이자식 수정해라... 9랑 3으로 나눠봐라....... 버튼 이동시켜.. -->

	
							<div class="input__item">
								<input type="text" placeholder="아이디를 입력해 주세요." id="userId" name="userId"  maxlength='15'>
								<span class="icon_id"></span>
							</div>


							<div class="input__btn">
								<input type="button" class="input__btn2" value='중복확인'>
							</div>
							
							<span class="id_ok">사용 가능한 아이디입니다.</span>
							<span class="id_already">아이디가 이미 존재합니다.</span>

						<div class="input__item">
							<input type="text" placeholder="이메일을 입력해 주세요." id="userMail" name="userMail">
							<span class="icon_mail"></span>
						</div>
						
						
							<div class="input__btn">
								<input type="button" class="input__btn2" value='인증메일전송'>
							</div>
						
						
						
						<div class="input__item">
							<input type="text" maxlength="13" placeholder="전화번호를 입력해 주세요." id="userTel" name="userTel">
							<!-- 만약 3개 창 만들면~ pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" -->
							<span class="icon_phone"></span>
						</div>

						<div class="input__item">
							<input type="password" placeholder="비밀번호를 입력해 주세요."
							id="userPass" name="userPass"> <span class="icon_lock"></span>
						</div>
						<div class="input__item">
							<input type="password" placeholder="비밀번호를 재입력 해 주세요." 
							id="userPass2" name="userPass2"> <span class="icon_lock"></span>
						</div>
						
						<div class="input__item">
							<input type="date" id="date" name="date"><span class="icon_calendar"></span>
						</div>
						
						<div class="input__item" style="background-color: white;">
							<span class="icon_heart_alt"></span>
							<div class="genderchoice">
								<input type="radio" value="woman" class="gender" name="gender">woman 
								<input type="radio" value="man" class="gender" name="gender"> man
								
							</div>
						</div>
					</form>

					<form action="" id="joinForm">
						<ul class="join_box" style="padding: 30px;">
							<li class="checkBox check02">
								<ul class="clearfix">
									<li>이용약관 동의(필수)</li>
							</li>
						</ul>
						<textarea name="" id="">제1장 총칙
	제1조 (목적)
	이 약관은 행정안전부의 정부혁신 공식 홈페이지 ‘정부혁신1번가’ (이하 "정부혁신1번가”라 합니다) 가 제공하는 모든 서비스(이하 "서비스"라 합니다)를 이용함에 있어 이용자와 "정부혁신1번가"간의 권리·의무 및 책임사항과 기타 필요한 사항을 정하는 데 목적이 있습니다.
	
	제2조 (약관의 효력 및 변경)
	"정부혁신1번가"는 귀하가 본 약관 내용에 동의하는 경우, "정부혁신1번가"의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. "정부혁신1번가"는 본 약관을 사전 고지 없이 변경할 수 있고, 변경된 약관은 이용자가 직접 확인할 수 있도록 서비스 화면에 공지하며, 공지와 동시에 그 효력이 발생됩니다. 이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다.
	
	제3조 (약관 외 준칙)
	이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 방송통신심의위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.
	제4조 (용어의 정의)
	① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
	
	1. 이용자 : 이 약관에 따라 "정부혁신1번가"가 제공하는 서비스를 받는자
	
	2. 가입 : “정부혁신1번가”가 제공하는 신청서 양식에 해당 정보를 기입하고, 이 약관에 동의하여 서비스 이용계약을 완료시키는 행위
	
	3. 회원 : "정부혁신1번가"에 개인정보 등 관련 정보를 제공하여 회원등록을 한 자로서, 일반회원과 정부혁신담당 공직자 회원으로 나뉨

	4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합
	
	5. 이용해지 : "정부혁신1번가" 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시
	
	② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.

</textarea>

					</form>
					<input type="checkbox" id="box1" name="box1"> 약관에 동의합니다. &nbsp;&nbsp;
					<button type="submit" class="btn btn-success" id="join_button"
						name="join_button">회원가입</button>

				</div>
			</div>

		</div>
	</div>
</section>
<!-- Signup Section End -->


<script type="text/javascript">
   $(document).ready(function() {
      
      $("#join_button").on("click", function() {
         
         //공백
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
         
            //비밀번호 일치-불일치
              if (userPass != userPass2) {
                  alert("두 비밀번호가 맞지 않습니다.");
                  form.userPass.value = "";
                  form.userPass2.value = "";
                  form.userPass2.focus();
                  return false;
              }
            
              //라디오 유효성 검사 (맞는지 아닌지 모름)
              if($(':radio[name="gender"]:checked').length < 1){
                  alert('테스트를 선택해주세요.');
                  document.form.gender[0].focus();
                  return false;
              }
            
      

      });

   })
</script>

<%@ include file="../footer.jsp"%>


<script type="text/javascript">
	$(document).ready(function() {
		
		$("#join_button").on("click", function() {

			//공백
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
			
			//비밀번호 유효성 검사 (그냥 냅둔거긔 ㅇㅅㅇ)
		     //  var password1RegExp = /^[a-zA-z0-9]{4,12}$/; 
		     //  if (!password1RegExp.test(userPass)) {
		     //       alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야~");
		     //      form.userPass.value = "";
		     //      form.userPass.focus();
		     //      return false;
		     //   }

				//비밀번호 일치-불일치
		        if ($("#userPass").val() != $("#userPass2").val()) {
		            alert("두 비밀번호가 맞지 않습니다.");
		           // form.userPass.value = "";
		            document.form.userPass2.value = "";
		            document.form.userPass2.focus();
		            return false;
		        } 
				
				
				if (!$("input:checked[id='box1']").is(":checked")){ 
					alert("이용약관 동의가 필요합니다."); 
				}
		        //라디오 유효성 검사 (맞는지 아닌지 모름)
		       // if($(':radio[name="gender"]:checked').length < 1){
		       //     alert('성별을 선택해주세요.');
		       //     document.form.gender[0].focus();
		       //     return false;
		            
		       // }  //return true;
				
		        function fn_idChk(){
		            $.ajax({
		              url : "member/idChk",
		              type : "post",
		              dataType : "json",
		              data : {"id" : $("#id").val()},
		              success : function(data){
		                if(data == 1){
		                  alert("중복된 아이디입니다.");
		                }else if(data == 0){
		                  $("#idChk").attr("value", "Y");
		                  alert("사용가능한 아이디입니다.");
		                }else {
		                  alert("아이디를 입력해주세요.");
		                }
		              }
		            })
		          }
		        

		

		});
	})
	
</script>

<script>

</script>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

