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
              <div class="col-xl-8 m-auto order-xl-1">
                <div class="card-body">
                  <form class="formform" name="form1" id="form1" method="post" action="/mypage/memberUpdate.do" style="margin-left: 150px;">
                    <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
                    <h2 style="margin-top: 80px; text-align: center; margin-bottom: 50px;">My account.</h2>
<!--                     <h6 class="heading-small text-muted mb-4">私のアカウント</h6> -->
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label" for="input-username">name</label> 
                            <input type="text" name="username" id="input-username" class="form-control form-control-alternative" value="${member.username }">
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-email">Email</label>
                            <input type="email" name="email" id="input-email" class="form-control form-control-alternative" value="${member.email }">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-first-name">Phone</label> <input
                              type="text" id="input-first-name" name="phone"
                              class="form-control form-control-alternative"
                              value="${member.phone }">
                          </div>
                        </div>
                      </div>
                    </div>
                    <hr class="my-4">
                    <!-- Address -->
                    <h6 class="heading-small text-muted mb-4">이하의
                      정보는 수정할 수 없습니다.</h6>
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group focused">
                            <!-- <label class="form-control-label" for="input-address">Address</label>
<input id="input-address" class="form-control form-control-alternative" placeholder="Home Address" value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09" type="text"> -->
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-4">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="">Id</label> <input
                              type="text" id="" name="userid"
                              class="form-control form-control-alternative"
                              value="${member.userid }" readonly>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="">gender</label> <input
                              type="text" id="" name="gender"
                              class="form-control form-control-alternative"
                              value="${member.gender }" readonly>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group">
                            <label class="form-control-label"
                              for="">birthday</label> <input
                              type="number" id="" name="birth"
                              class="form-control form-control-alternative"
                              value="${member.birth }" readonly>
                          </div>
                        </div>
                      </div>
                    </div>
                    <hr class="my-4">
                    <!-- Description -->
                   
                    <div class="pl-lg-4">
                      <div class="form-group focused">
                        <label>会員規約</label>
                        <textarea rows="4"
                          class="form-control form-control-alternative"
                          placeholder="A few words about you ..."
                          readonly>jslグループ株式会社（以下「jsl」といいます。）、その子会社、および関連会社で構成されるjslグループ（以下「jslグループ」といいます。）は、お客様に最適でユニークなサービスを提供したいと考えており、グローバルに展開する楽天グループのサービスに容易にアクセスしていただけるように、 シングル・ログイン機能を含む共通IDプログラム（以下「jsl ID」といいます。）を提供しています。 お客様は、jslが定めるjsl会員規約（以下「本規約」といいます。）に基づいてアカウント（以下「アカウント」といいます。）を作成し、会員サービスをご利用いただくことができます。
            </textarea>
                      </div>

                      <button type="submit" id="updatebtn" class="btn btn-primary" style="margin-left: 110px;">完了</button>
                      <button type="reset" class="btn btn-secondary" value="리셋">リセット</button>
                      <button type="button" class="btn btn-secondary" value="회원탈퇴" onclick="location.href='byebye.do'">退会</button>
<!--                       <input type="button" class="btn btn-secondary" value="회원탈퇴"> -->
                       <!-- <button type="submit" class="btn btn-primary"
              id="join_button" name="join_button">会員登録へ</button> -->
                    </div>
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



<%@ include file="../footer.jsp"%>

