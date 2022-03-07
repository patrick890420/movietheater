<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="select-container" style="padding-bottom: 220px;">
  <div class="select-wrapper">
    <div class="select-title">チケット情報</div>
    <div class="select-seat-container">
      <div class="select-seat-number-container">
        <div class="select-seat-number-wrapper">
          <div class="select-seat">
            <img class="tk-img" alt="" src="/upload/${tkInfo.poster}">
          </div>
          
          
        </div>
        <div class="reserve-number-wrapper">
          <div class="reserve-number">${tkInfo.title}</div>
          <div class="reserve-number-title">${tkInfo.subtitle}</div>
        </div>
      </div>
      <div class="select-seat-information">
        <div class="selected-movie"></div>
        <div class="select-seat-information-wrapper">
          <div class="select-theater-place selected-theater-place-info">東京</div>
          <div class="select-theater-place selected-theater-place-info">1館 8階</div>
          <div class="select-theater-place">
          
          </div>

        </div>
        <div class="select-theater-date">
          <div class="selected-seats-title" style="margin-right: 30px;">上映日時</div>
          <div class="theater-date"> ${tkInfo.tkt_date} / </div>
          <div class="theater-time"> ${tkInfo.tkt_time}時</div>
        </div>
        <div class="select-theater-date">
        </div>
        <div class="selected-seats-wrapper">
          <span class="selected-seats-title">座席番号</span>
          <span class="ticket-price">${svoInfo.seat_cd}</span>
        </div>
        <div class="ticket-price-wrapper">
          <div class="ticket-price-title">決済金額</div>
          <div class="ticket-price">${svoInfo.seat_price }円</div>
        </div>
          <!-- 결제 정보 -->
          <form id="frm" method="post">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
            <input type="hidden" class="selectedTktCd" id="tkt_cd" name="tkt_cd" value="${tkInfo.tkt_cd}">
            <input type="hidden" class="selectedTktCd" id="pay_name" name="pay_name" value="${tkInfo.title}">
            <input type="hidden" class="payMoney" id="charge" name="charge" value="${svoInfo.seat_price }">
              <div class="">
                <input type="button" onclick="requestPay();" value="決済" class="reserve-button btn btn-primary pull-right">
              </div>
          </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>

let tkt_cd = document.getElementById("tkt_cd").value;
let name = document.getElementById("pay_name").value;
let charge = document.getElementById("charge").value;

function requestPay(){
// let IMP = window.IMP;
IMP.init('imp09327972') ;
IMP.request_pay({
  pg : 'html5_inicis',
    pay_method : 'card',
    merchant_uid: tkt_cd, // 상점에서 관리하는 주문 번호
    name : name,
    amount : charge,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(response) {
  //결제 후 호출되는 callback함수
  var data = {"tkt_cd" : tkt_cd ,"charge" : charge};
    $.ajax({
      url : '/ticket/insertPayment.do', 
          type :'POST',
          data : JSON.stringify(data),
          beforeSend : function(xhr)
          {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
              xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
          },
          dataType: 'JSON',
          contentType : "application/json;charset=UTF-8",
          success: function(res){
            console.log("추가성공");
          },
          error:function(){
            console.log("Insert ajax 통신 실패!!!");
          }
    }) //ajax
  if ( response.success ) { //결제 성공
    console.log(response);
    var result = {
        "imp_uid" : rsp.imp_uid,
        "merchant_uid" : rsp.merchant_uid,
        "biz_email" : 'test@test.test',
        "pay_date" : new Date().getTime(),
        "amount" : rsp.paid_amount,
        "card_no" : rsp.apply_num,
        "refund" : 'payed'
        }
    alert(rsp.imp_uid);
    
  } else {
    alert('결제실패 : ' + response.error_msg);
  }
})

}
</script>
<%@ include file="../footer.jsp"%>