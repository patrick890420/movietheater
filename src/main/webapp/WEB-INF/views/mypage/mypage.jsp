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
              <div class="col-xl-8 m-auto order-xl-1">
                <div class="card-body">
                  <form class="formform" name="form1" method="post" style="margin-left: 150px;">
                    <h2 style="margin-top: 80px; text-align: center; margin-bottom: 50px;">My account.</h2>
<!--                     <h6 class="heading-small text-muted mb-4">私のアカウント</h6> -->
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-username">name</label> <input
                              type="text" id="input-username"
                              class="form-control form-control-alternative"
                              value="${mvo.username }">
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label"
                              for="input-email">Email</label> <input
                              type="email" id="input-email"
                              class="form-control form-control-alternative"
                              value="${mvo.email }">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="input-first-name">Phone</label> <input
                              type="text" id="input-first-name"
                              class="form-control form-control-alternative"
                              value="${mvo.phone }">
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
                              type="text" id=""
                              class="form-control form-control-alternative"
                              value="${mvo.userid }" readonly>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group focused">
                            <label class="form-control-label"
                              for="">gender</label> <input
                              type="text" id=""
                              class="form-control form-control-alternative"
                              value="${mvo.gender }" readonly>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group">
                            <label class="form-control-label"
                              for="">birthday</label> <input
                              type="number" id=""
                              class="form-control form-control-alternative"
                              value="" readonly>
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
                          readonly>제1장 총칙
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
            </textarea>
                      </div>

                      <input type="button" id="updatebtn" class="btn btn-primary class="input__btn input__btn2" value="수정 완료">
                      <button type="reset" class="btn btn-secondary" value="리셋">reset</button>
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
      <!--                         <button class="btn btn-primary" id="sidebarToggle">Toggle Menu</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="#!">Link</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Action</a>
                                        <a class="dropdown-item" href="#!">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Something else here</a>
                                    </div>
                                </li>
                            </ul>
                        </div> -->
  </div>
  </nav>

</div>

<!-- Bootstrap core JS-->
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

<script>
    $(document).ready(function(){
        $("#updatebtn").click(function(){
           alert("수정완료 하였습니다.");
            document.form1.action = "/mypage/memberUpdate.do";
            document.form1.submit();
        });
    });
</script>


<%@ include file="../footer.jsp"%>

