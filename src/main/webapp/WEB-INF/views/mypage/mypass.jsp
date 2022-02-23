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
        href="mypage.do">アカウント管理</a> <a
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
                <div class="card-body">
                  <form class="formform" style="margin-left: 300px;">
                    <h2 style="margin-top: 80px;">Changing the password.</h2>
                    <div class="pl-lg-12">
                      <div class="row">
                        <div class="col-lg-12" style="margin-top: 50px;">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-first-name">비밀번호를 변경하시려면,<br> 로그인 시 사용하시는 비밀번호를 입력해 주세요.</label> 
                              <input type="password" id="input-first-name" class="form-control form-control-alternative"
                              placeholder="기존 비밀번호를 입력해 주세요." name="userpw" style="margin-top: 30px;">
                              <input type="password" id="userPass" class="form-control form-control-alternative"
                              placeholder="바꿀 비밀번호를 입력해 주세요." style="margin-top: 30px;" name="userpw">
                               <input type="password" id="userPass2" class="form-control form-control-alternative"
                              placeholder="바꿀 비밀번호를 재입력해 주세요." style="margin-top: 30px;"> <!-- name="userpw" -->
                              <input type="button" value="확인" class="input__btn4">
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

<%@ include file="../footer.jsp"%>

