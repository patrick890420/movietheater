<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
	data-setbg="/resources/img/logintitle.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
			</div>
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
					<h3>Sign Up</h3>
					<form action="#">
						<div class="input__item">
							<input type="text" placeholder="이름을 입력해 주세요."> <span
								class="icon_profile"></span>
						</div>
						<input type="button" value='중복확인' class="btn btn-primary"
							style="position: absolute;">
						<div class="input__item">
							<input type="text" placeholder="아이디를 입력해 주세요."> <span
								class="icon_id"></span>
						</div>
						<input type="button" value='중복확인' class="btn btn-primary"
							style="position: absolute;">
						<div class="input__item">
							<input type="text" placeholder="이메일을 입력해 주세요."> <span
								class="icon_mail"></span>
						</div>
						<div class="input__item">
							<input type="tel" maxlength="13" placeholder="전화번호를 입력해 주세요."
								pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"> <span
								class="icon_phone"></span>
						</div>

						<div class="input__item">
							<input type="password" placeholder="비밀번호를 입력해 주세요."> <span
								class="icon_lock"></span>
						</div>
						<div class="input__item">
							<input type="password" placeholder="비밀번호를 재입력 해 주세요."> <span
								class="icon_lock"></span>
						</div>
						<div class="input__item">
							<input type="date"><span class="icon_calendar"></span>
						</div>
						<div class="m_input__item">
							<span class="icon_heart_alt"></span>
							<div class="genderchoice">
								<input type="radio" value="woman" class="gender" name="gender">
								woman <input type="radio" value="man" class="gender"
									name="gender"> man
							</div>
						</div>
						<form action="" id="joinForm">
							<ul class="join_box">
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
						<input type="checkbox"> 약관에 동의합니다. &nbsp;&nbsp;
						<button type="submit" class="btn btn-success">회원가입</button>
					</form>

				</div>
			</div>

		</div>
	</div>
</section>
<!-- Signup Section End -->


<%@ include file="../footer.jsp"%>