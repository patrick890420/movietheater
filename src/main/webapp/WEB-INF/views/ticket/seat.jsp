<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="select-container" style="padding-bottom: 30px;">
  <div class="select-wrapper">
    <div class="select-title">인원/좌석</div>
    <div class="select-seat-container">
      <div class="select-seat-number-container">
        <div class="select-seat-number-wrapper">
          <div class="select-seat">
            <div class="select-seat-age">일반</div>
            <div class="select-seat-number">
              <ul class="select-seat-ul select-seat-ul-normal">
                <li class="select-number-normal">0</li>
                <li class="select-number-normal">1</li>
                <li class="select-number-normal">2</li>
                <li class="select-number-normal">3</li>
                <li class="select-number-normal">4</li>
                <li class="select-number-normal">5</li>
              </ul>
            </div>
          </div>
          <div class="select-seat">
            <div class="select-seat-age">청소년</div>
            <div class="select-seat-number">
              <ul class="select-seat-ul select-seat-ul-teen">
                <li class="select-number-teen">0</li>
                <li class="select-number-teen">1</li>
                <li class="select-number-teen">2</li>
                <li class="select-number-teen">3</li>
                <li class="select-number-teen">4</li>
                <li class="select-number-teen">5</li>
              </ul>
            </div>
          </div>
          <div class="select-seat">
            <div class="select-seat-age">우대</div>
            <div class="select-seat-number">
              <ul class="select-seat-ul  select-seat-ul-old">
                <li class="select-number-old">0</li>
                <li class="select-number-old">1</li>
                <li class="select-number-old">2</li>
                <li class="select-number-old">3</li>
                <li class="select-number-old">4</li>
                <li class="select-number-old">5</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="reserve-number-wrapper">
          <div class="reserve-number-title">선택된 좌석 수</div>
          <div class="reserve-number">0</div>
        </div>
      </div>
      <div class="select-seat-information">
        <div class="selected-movie"></div>
        <div class="select-seat-information-wrapper">
          <div class="select-theater-place selected-theater-place-info">서대전</div>
          <div class="select-theater-place selected-theater-place-info">3관
            8층</div>
          <div class="select-theater-place">
            <span>남은좌석</span><span class="remain-seats">152</span>/<span
              class="all-seats">172</span>
          </div>

        </div>
        <div class="select-theater-date">
          <div class="theater-date"></div>
          <div class="theater-time"></div>
        </div>
        <div class="selected-seats-wrapper">
          <span class="selected-seats-title">좌석번호</span>
          <span class="selected-seats">선택한 좌석이 없습니다.</span>
        </div>
        <div class="ticket-price-wrapper">
          <div class="ticket-price-title">가격</div>
          <div class="ticket-price">0원</div>
        </div>
        <form action="movePayment.do" class="seatForm" method="post">
          <input type="hidden" class="title" name="title">
          <input type="hidden" class="selectedTheater" name="selectedTheater">
          <input type="hidden" class="reserveDate" name="movieDate">
          <input type="hidden" class="runningTime" name="runningTime">
          <input type="hidden" class="movieAge" name="movieAge" value="">
          <!-- 티켓의수(선택한 좌석) -->
          <input type="hidden" class="ticketNumber" name="ticketNumber">
          <input type="hidden" class="selectedSeat" name="selectedSeat">
          <!-- 결제 정보 -->
          <input type="hidden" class="payMoney" name="payMoney">
          <button type="button" class="reserve-button btn btn-primary">결제하기
          </button>
        </form>
      </div>
    </div>
    <div class="seat-container">
      <div class="seat-wrapper">
        <div class="screen-view-wrapper">
          <div class="screen-view">SCREEN</div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="ticket_tnb">
</div>
<%@ include file="../footer.jsp"%>