<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp"%>
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">

<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Theaters registration
                        </h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="adminTheaterInsert.do" class="text-muted">Theater</a></li>
                                    <li class="breadcrumb-item text-muted" aria-current="page">
                                    <a href="adminTheaterInsert2.do" class="text-muted">Screen</a></li>
                                    <li class="breadcrumb-item active">Seat</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
           <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-lg-12">
                     <form name="adminteatherInsertPro2" action="adminteatherInsertPro3.do" method="post" enctype="multipart/form-data">
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                    <div class="card">
                <div class="card-body">
                  <input type="hidden" id="sccode" name="screen_cd" value="${sccode}">
                  <h4 class="card-title">Seat Code</h4>
                  <h6 class="card-subtitle">
                    설정된
                    <code>Seat Code</code>
                    는 수정불가 입니다.
                  </h6>
                  <div class="col-sm-3 col-md-3 col-lg-3"
                    style="padding: 0;">
                    <form class="mt-2">
                      <div class="form-group">
                        <input type="text" class="form-control"
                          id="nametext1" placeholder="Seat Code"
                          disabled>
                      </div>
                    </form>
                  </div>
                  <div class="col-sm-8 col-md-8 col-lg-8" style="padding:0;">
                  <div class="seat-wrapper"></div>
                  </div>
                </div>
                <h4 id="list-item-4" style="margin-left:26px;">Information registration.</h4>
                <div class="col-lg-12 mb-3" style="text-align: right;">
                  <div class="btn-list" style="margin-bottom:5px;">
                    <button type="submit" class="btn btn-success">
                      <i class="fas fa-check"></i> registration
                    </button>
                    <button type="button"
                    class="btn btn-danger dropdown-toggle"
                    data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">Cancel</button>
                  </div>
                </div>
              </div>
              </form>
              
            
            </div>
          </div>
        </div>
      </div>


      <!-- 좌석 -->

<script>
const seatWrapper = document.querySelector(".seat-wrapper");
let div = "";
let ary = [];
for (let i = 1; i < 16; i++) {
    div = document.createElement("div");
    seatWrapper.append(div);
    for (let j = 1; j < 12; j++) {
        const input = document.createElement('input');
        input.type = "button";
        input.name = "seats"
        input.classList = "seat";
        //3중포문을 사용하지 않기위해 
        mapping(input, i, j);
        console.log(input.value);
        div.append(input);
        
    }
}
function mapping(input, i, j) {
    if (i === 1) {
        input.value = "A" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    } else if (i === 2) {
        input.value = "B" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    } else if (i === 3) {
        input.value = "C" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
        ary=[input.value];
        console.log(ary[i])
    } else if (i === 4) {
        input.value = "D" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    } else if (i === 5) {
        input.value = "E" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    } else if (i === 6) {
        input.value = "F" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    } else if (i === 7) {
        input.value = "G" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 8) {
        input.value = "H" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 9) {
        input.value = "I" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 10) {
        input.value = "J" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 11) {
        input.value = "K" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 12) {
        input.value = "L" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 13) {
        input.value = "M" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 14) {
        input.value = "N" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }else if (i === 15) {
        input.value = "O" + j;
        ary[i]=[input.value];
        console.log(ary[i]);
    }
}
</script>


<%@ include file="../adminfooter.jsp"%>
              