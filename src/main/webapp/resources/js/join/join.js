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