<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../adminheader.jsp" %>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">映画詳細ページ</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html" class="text-muted">Movie</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Movie-List</li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Movie-View</li>
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
                                <h2 class="card-title" style="text-align:center; padding-bottom:35px;">映画情報</h2>
                                    <div class="form-body">
                                        <div class="row">
                                                <div class="anime__details__pic set-bg" style="padding-right:30px;"><img style="width:495px; height:700px;" src="/upload/${view.poster}" alt=""></div>
                                            <div class="col-md-2 pt-5">
                                                <div class="form-group">
                                                    <p>タイトル<p>
                                                </div>
                                                <div class="form-group">
                                                    <p>サブタイトル</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>公開日</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>監督</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>出演</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>上映時間</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>映倫</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>上映狀態</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>製作國家</p>
                                                </div>
                                                <div class="form-group">
                                                    <p>映画紹介</p>
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
                                                 <p>${view.rtime } 分</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.rate }</p>
                                              </div>
                                              <div class="form-group">
                                                <p><c:if test="${film[0].film_status==1 }">
                                                                                             上映中
                                              </c:if>
                                              <c:if test="${film[0].film_status==0 }">
                                                                                            上映終了
                                              </c:if></p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.n_name }</p>
                                              </div>
                                              <div class="form-group">
                                                <p>${view.intro }</p>
                                              </div>
                                            </div>
                                            <div class="col-md-12 pt-5 pb-3" style="text-align: center;" >
                                              <h2>スチールカット</h2>
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
                                            <button type="button" class="btn btn-info">修正</button>
                                            <button type="button" onclick="location.href='adminMovieDelete.do';" class="btn btn-dark">削除</button>
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