<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


	 <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg"
    style="background-color: #8e8e8e;">
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
        <div class="container" style="padding: 100px 0; border: groove; background:url(/resources/img/hubo.jpg); background-position: bottom;"  >
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Login</h3>
                        <form name="login" id="login">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="input__item">
                              <input type="text" placeholder="ユーザーID" name="username">
                              <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                              <input type="password" name="password" placeholder="パスワード">
                              <span class="icon_lock"></span>
                            </div>
<!--                             <button type="submit" class="site-btn">Login Now</button> -->
                            <a class="btn btn-primary" href="javascript:fn_login();">ログイン</a>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>会員登録の方はこちらへ</h3>
                        <a href="/join/join.do" class="btn btn-primary">新規登録</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->
<script>
    function fn_login(){
        var lgn = document.getElementById("login");
        lgn.action="/login";
        lgn.method="post";
        lgn.submit();
    }
  </script>	

<%@ include file="../footer.jsp" %>	