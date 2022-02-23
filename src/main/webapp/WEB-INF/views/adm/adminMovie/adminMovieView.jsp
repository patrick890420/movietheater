<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../adminheader.jsp" %>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">영화 상세 페이지</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Library</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title" style="text-align:center; padding-bottom:35px;">영화 상세 정보</h2>
                                    <div class="form-body">
                                        <div class="row">
                                                <div class="anime__details__pic set-bg" style="padding-right:30px;"><img style="height:700px;" src="/upload/${view.poster}" alt=""></div>
                                            <div class="col-md-2 pt-5">
                                                <div class="form-group">
                                                    <p>영화 제목<p>
                                                </div>
                                                <div class="form-group">
                                                    <p>영화 부제목</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>개봉일</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>감독</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>배우</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>상영 시간</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>상영 등급</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>상영 상태</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>제작 국가</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>영화 소개</p>
                                                </div>
                                                
                                            </div><!-- 왼쪽 -->
                                            <div class="col-md-4 pt-5">
                                              <div class="form-group">
                                                <p>${view.title}</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.subtitle}</p>
                                              </div>
                                              <div class="form-group">
                                                <fmt:parseDate value="${view.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                                <p><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.d_name}</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.a_name }</p>
                                              </div>
                                              <div class="form-group">
                                                 <p>${view.rtime } 분</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.rate }</p>
                                              </div>
                                              <div class="form-group">
                                                <p>상영 중</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.n_name }</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.intro }</p>
                                              </div>
                                            </div>
                                            <div class="col-md-12 pt-5 pb-3" style="text-align: center;" >
                                              <h2>영화 스틸샷</h2>
                                            </div>
                                          <div class="anime__details__pic set-bg pr-2">
                                              <img style="height:250px; width:280px;" src="/upload/${cut.still_img1}" alt="">
                                          </div>
                                          <div class="anime__details__pic set-bg pr-2">
                                              <img style="height:250px; width:280px;" src="/upload/${cut.still_img2}" alt="">
                                          </div>
                                          <div class="anime__details__pic set-bg pr-2">
                                              <img style="height:250px; width:280px;" src="/upload/${cut.still_img3}" alt="">
                                          </div>
                                          <div class="anime__details__pic set-bg">
                                              <img style="height:250px; width:280px;" src="/upload/${cut.still_img4}" alt="">
                                          </div>
                                      </div>
                                    <div class="form-actions pt-5">
                                        <div class="text-right">
                                            <button type="button" class="btn btn-info">수정</button>
                                            <button type="button" onclick="location.href='adminMovieDelete.do';" class="btn btn-dark">삭제</button>
                                        </div>
                                    </div>
                                           <!--오른쪽 -->
                                                    
                                        </div><!-- row -->
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
    
    
    
    
    <%@ include file="../adminfooter.jsp" %>