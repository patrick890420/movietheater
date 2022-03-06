<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="../adminheader.jsp" %>
  <!-- Page wrapper  -->
  <!-- ============================================================== -->
  <div class="page-wrapper">
      <!-- ============================================================== -->
      <!-- Bread crumb and right sidebar toggle -->
      <!-- ============================================================== -->
      <div class="page-breadcrumb">
          <div class="row">
              <div class="col-7 align-self-center">
                  <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Movie Info registration</h4>
                  <div class="d-flex align-items-center">
                      <nav aria-label="breadcrumb">
                          <ol class="breadcrumb m-0 p-0">
                              <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
                              <li class="breadcrumb-item text-muted active" aria-current="page">Movie</li>
                          </ol>
                      </nav>
                  </div>
              </div>
           </div>
      </div><!-- 1-1 -->
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
          <form name="adminMovieInsertPro" action="adminMovieInfoInsertPro.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
            <input type="hidden" name="m_cd" value="${m_cd}">
<%--             <c:set target="${list}" property="list" /> --%>
<%--             <c:out value="${list.m_cd}" /> --%>
          <div class="row">
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">俳優</h4>
                              <div class="form-group actorsForm">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#actorsmodal">俳優檢索</button>
                                  <input class="form-contorl" id="a_name" name="a_name">
                                  <input type="hidden" id="a_cd" name="a_cd">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">監督</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#directrosmodal">監督檢索</button>
                                  <input class="form-contorl" id="d_name" name="d_name">
                                  <input type="hidden" id="d_cd" name="d_cd">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">ジャンル</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#genresmodal">ジャンル檢索</button>
                                  <input class="form-contorl" id="g_name" name="g_name">
                                  <input type="hidden" id="g_cd" name="g_cd">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-4">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">製作國家</h4>
                              <div class="form-group">
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#nationsmodal">製作國家檢索</button>
                                  <input class="form-contorl" id="n_name" name="n_name">
                                  <input type="hidden" id="n_cd" name="n_cd">
                              </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-12 col-md-6 col-lg-8">
                  <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">영화 스냅샷</h4>
                          <h6 class="card-subtitle"><code>스킬컷은 4장까지만 가능합니다.</code>
                          </h6>
                              <div class="input-group">
                                  <div class="custom-file">
                                      <input multiple="multiple" type="file" class="custom-file-input" id="inputGroupFile05" name="stillcut">
                                      <label class="custom-file-label" for="inputGroupFile05">Choose file</label>
                                  </div>
                              </div>
                      </div>
                  </div>
              </div>         
              
          <div class="mx-auto" style="text-align:center;">
            <button type="submit" class="btn btn-info">登錄</button>
            <button type="reset" class="btn btn-dark">リセット</button>
          </div>
          
      </div><!-- 2-1 -->
      </form>
      <form method="get" action="/adm/adminMovieFilmUpdate.do" >
        <c:choose>
         <c:when test="${films.film_status == 1}">
          <input type="hidden" value="${films.m_cd}" name="m_cd">
          <input type="hidden" value="0" name="film_status">
          <input type="hidden" value="${films.m_cd}" name="m_cd">
              <button type="submit">情報入力</button>
          </c:when>
               <c:otherwise>
               <input type="hidden" value="${films.m_cd}" name="m_cd">
                 <input type="hidden" value="1" name="film_status">
                 <input type="hidden" value="${films.m_cd}" name="m_cd">
                 <button type="submit">入力</button>
              </c:otherwise>
        </c:choose>
              </form>
          <!-- ============================================================== -->
          <!-- End PAge Content -->
          <!-- ============================================================== -->
          <!-- ============================================================== -->
          <!-- Right sidebar -->
          <!-- ============================================================== -->
          <!-- .right-sidebar -->
          <!-- ============================================================== -->
          <!-- End Right sidebar -->
          <!-- ============================================================== -->
    </div>
  </div>
      <!-- ============================================================== -->
      <!-- End Container fluid  -->
      <!-- 모달 -->
                                                               
<div id="actorsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
      <div style="text-align: center;"><h3>배우 검색</h3></div>
      <div class="tab-content">
      <div class="tab-pane show active" id="actors">
      <!-- basic table -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table id="actorsTable" class="table table-striped table-bordered no-wrap">
                    <thead>
                      <tr>
                        <th>CODE</th>
                        <th>NAME</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${actors}" var="actors">
                          <tr class="actorsTr">
                            <td>
                              <p class="actorsCode" data-toggle="modal" data-target="#primary-header-modal">${actors.a_cd}</p>
                            </td>
                            <td>
                              <p class="actorsName" data-toggle="modal" data-target="#primary-header-modal">${actors.a_name}</p>
                            </td>
                          </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>CODE</th>
                        <th>NAME</th>
                      </tr>
                    </tfoot>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- end-->
    </div> <!-- end -->
  </div> <!-- end  -->
</div>
           
<!-- 2번째 모달 -->
<div id="directrosmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
        <div style="text-align: center;"><h3>감독 검색</h3></div>
          <!-- Directors tab -->
        <div class="tab-pane" id="directors">
        <!-- basic table -->
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="directorsTable" class="table table-striped table-bordered no-wrap">
                    <thead>
                      <tr>
                        <th>CODE</th>
                        <th>NAME</th>
                      </tr>
                   </thead>
                   <tbody>
                     <c:forEach items="${directors }" var="directors">
                       <tr class="directorsTr">
                         <td>
                          <p class="directorsCode" data-toggle="modal" data-target="#primary-header-modal">${directors.d_cd }</p>
                         </td>
                         <td>
                          <p class="directorsName" data-toggle="modal" data-target="#primary-header-modal">${directors.d_name }</p>
                         </td>
                       </tr>
                     </c:forEach>
                   </tbody>
                   <tfoot>
                     <tr>
                       <th>CODE</th>
                       <th>NAME</th>
                     </tr>
                   </tfoot>
                 </table>
               </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
  
<!--  3번째 모달 -->
              
<div id="nationsmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
      <div style="text-align: center;"><h3>장르 검색</h3></div>
        <div class="tab-pane" id="genres">
          <!-- basic table -->
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                   <table id="genresTable" class="table table-striped table-bordered no-wrap">
                   <thead>
                     <tr>
                       <th>CODE</th>
                       <th>NAME</th>
                     </tr>
                   </thead>
                   <tbody>
                     <c:forEach items="${nations }" var="nations">
                       <tr class="nationsTr">
                         <td>
                          <p class="nationsCode">${nations.n_cd }</p>
                        </td>
                         <td>
                          <p class="nationsName">${nations.n_name }</p>
                        </td>
                       </tr>
                     </c:forEach>
                   </tbody>
                   <tfoot>
                     <tr>
                       <th>CODE</th>
                       <th>NAME</th>
                     </tr>
                   </tfoot>
                 </table>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
     </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
                                                      <!-- 4번째 모달 -->
                                                      
<div id="genresmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full-width">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="fullWidthModalLabel">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>
      <div class="modal-body">
        <div style="text-align: center;"><h3>국가 검색</h3></div>
        <div class="tab-pane" id="nations">
        <!-- basic table -->
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                 <div class="table-responsive">
                   <table id="nationsTable" class="table table-striped table-bordered no-wrap">
                     <thead>
                       <tr>
                         <th>CODE</th>
                         <th>NAME</th>
                       </tr>
                     </thead>
                     <tbody>
                       <c:forEach items="${genres }" var="genres">
                         <tr class="genresTr">
                          <td>
                            <p class="genresCode">${genres.g_cd }</p>
                          </td>
                          <td>
                            <p class="genresName">${genres.g_name }</p>
                          </td>
                        </tr>
                      </c:forEach>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>CODE</th>
                        <th>NAME</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
$(".actorsTr").on("click", function () {
  var actorsForm =$(this);
  var aname=actorsForm.find(".actorsName").text();
  var acd=actorsForm.find(".actorsCode").text();
  $("#a_name").val(aname);
  $("#a_cd").val(acd);
  $("#actorsmodal").modal('hide');
});

$(".directorsTr").on("click", function () {
  var directorsForm =$(this);
  var dname=directorsForm.find(".directorsName").text();
  var dcd=directorsForm.find(".directorsCode").text();
  $("#d_name").val(dname);
  $("#d_cd").val(dcd);
  $("#directrosmodal").modal('hide');
});

$(".nationsTr").on("click", function () {
  var nationsForm =$(this);
  var nname=nationsForm.find(".nationsName").text();
  var ncd=nationsForm.find(".nationsCode").text();
  $("#n_name").val(nname);
  $("#n_cd").val(ncd);
  $("#nationsmodal").modal('hide');
});

$(".genresTr").on("click", function () {
  var genresForm =$(this);
  var gname=genresForm.find(".genresName").text();
  var gcd=genresForm.find(".genresCode").text();
  $("#g_name").val(gname);
  $("#g_cd").val(gcd);
  $("#genresmodal").modal('hide');
});
</script>
<!-- 모달 종료 -->
  <!-- ============================================================== -->
  <!-- End Page wrapper  -->
  <!-- ============================================================== -->
<%@ include file ="../adminfooter.jsp" %>