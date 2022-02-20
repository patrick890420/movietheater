<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- <div> -->
<!--   <img alt="" src="/resources/img/ticket/popcon2.png"> -->
<!-- </div> -->
<div class="reserve-container">
  <div class="movie-part">
    <div class="reserve-title">영화</div>
    <div class="movie-list-wrapper">
      <div class="movie-list">
        <table>
          <c:forEach items="${mvList}" var="mvList">
            <tr>
              <td>
                <c:if test="${mvList.rate == 12}">
                  <div class="tk-ep12">12</div>
                </c:if>
                <c:if test="${mvList.rate == 15}">
                  <div class="tk-ep15">15</div>
                </c:if>
                <c:if test="${mvList.rate == 19}">
                  <div class="tk-ep19">19</div>
                </c:if>
                <c:if test="${mvList.rate == 0}">
                  <div class="tk-ep0">ALL</div>
                </c:if>
                  <button class="btn movie-name-btn">
                    ${mvList.title}
                  </button>
                </td>
              </tr>
          </c:forEach>
        </table>  
      </div>
    </div>
  </div>
  <div class="theater-part">
    <div class="reserve-title">극장</div>
    <div class="theater-container">
      <div class="theater-wrapper">
        <div class="theater-location-wrapper">
          <button class="theater-location">대전(1)</button>
          <button class="theater-location">서울(2)</button>
          <button class="theater-location">청주(3)</button>
        </div>
        <div class="theater-place-wrapper">
          <button class="theater-place">서대전</button>
          <button class="theater-place">유성</button>
          <button class="theater-place">둔산</button>
          <button class="theater-place">복합</button>
        </div>
      </div>
    </div>
  </div>
  <div class="day-part">
    <div class="reserve-title">날짜</div>
    <div class="reserve-date"></div>
  </div>
  <div class="time-part">
    <div class="reserve-title">시간</div>
    <div class="reserve-time">
      <div class="reserve-where">4관(Laser) 6층(총 240석)</div>
      <div class="reserve-time-wrapper">
        <button class="reserve-time-button">
          <span class="reserve-time-want">12:20</span>
          <span class="reserve-time-remain">240석</span>
        </button>
        <button class="reserve-time-button">
          <span class="reserve-time-want">14:20</span>
          <span class="reserve-time-remain">240석</span>
        </button>
        <button class="reserve-time-button">
          <span class="reserve-time-want">16:20</span>
          <span class="reserve-time-remain">240석</span>
        </button>
        <button class="reserve-time-button">
          <span class="reserve-time-want">18:20</span>
          <span class="reserve-time-remain">240석</span>
        </button>
      </div>
    </div>
    <div>
    </div>
  </div>
</div>
<div class="col-md-12 p-0 ticket_tnb">
  <div class="col-md-7">
  </div>
  <div id="ticket_tnb">
    <form class="moveSeatForm" action="moveSeat.do" method="post">
      <input type="hidden" class="title" name="title">
      <input type="hidden" class="movieAge" name="movieAge">
      <input type="hidden" class="selectedTheater" name="selectedTheater">
      <input type="hidden" class="selectedLocation" name="selectedLocation">
      <input type="hidden" class="reserveDate" name="movieDate">
      <input type="hidden" class="runningTime" name="runningTime">
      <button class="moveSeatButton btn btn-primary" type="button" onclick="location.href='/ticket/seat.do'">예약하기</button>
    </form>
  </div>
</div>
<%@ include file="../footer.jsp"%>