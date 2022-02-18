<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


	 <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/img/logintitle.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2 style="color: #fff;">Login</h2>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container" style="border: solid 1px; padding: 100px 0;">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Login</h3>
                        <form name="login" id="login" action="/login/loginPro.do" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="input__item">
                                <input type="text" placeholder="ID" name="username">
                                <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="Password" name="userpw">
                                <span class="icon_lock"></span>
                            </div>
                            <input type="button" class="site-btn" id="login"><a href="javascript:fn_login();">Login Now</a>
                        </form>
                        <a href="#" class="forget_pass">Forgot Your Password?</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>会員登録の方はこちらへ</h3>
                        <a href="/join/join.do" class="primary-btn">회원등록</a>
                    </div>
                </div>
            </div>
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <span>or</span>
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                                <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->

<script>

  function fn_login(){
//       var lgn = document.login;
       var lgn = document.getElementById("login"); //getElementById에는 "#id"말고 걍 id적는다
       lgn.action="/login";
       lgn.method="post";
       lgn.submit();
  }
</script>

<%@ include file="../footer.jsp" %>	

