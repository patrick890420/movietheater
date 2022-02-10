<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
	data-setbg="/resources/img/logintitle.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="normal__breadcrumb__text">
					<h2>Sign Up</h2>
				</div>
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
						<div class="input__item">
							<input type="text" placeholder="아이디를 입력해 주세요."> <span
								class="icon_id"></span>
						</div>
						<input type="button" class="site-btn" value='중복확인'>

						<div class="input__item">
							<input type="text" placeholder="이메일을 입력해 주세요."> <span
								class="icon_mail"></span>
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
							<input type="date"><span class="icon_heart_alt"></span>
						</div>
						<div class="input__item">
							<span class="icon_heart_alt"></span>
							<div class="genderchoice">
								<input type="radio" value="woman" class="gender" name="gender">
								woman <input type="radio" value="man" class="gender"
									name="gender"> man
							</div>
						</div>
						<div class="input__item">
							<input type="tel" maxlength="13"
								pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"> <span
								class="icon_phone"></span>
						</div>
						<form action="" id="joinForm">
							<ul class="join_box">
								<li class="checkBox check02">
									<ul class="clearfix">
										<li>이용약관 동의(필수)</li>
								</li>
							</ul>
							<textarea name="" id="">이런 저런 내용이에용</textarea>

						</form>
						<input type="checkbox"> 약관에 동의합니다.
						<button type="submit" class="site-btn">회원가입</button>
					</form>
					<h5>
						이미 계정이 있는 분은 이쪽에 <a href="#">Log In!</a>
					</h5>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- Signup Section End -->


<%@ include file="../footer.jsp"%>