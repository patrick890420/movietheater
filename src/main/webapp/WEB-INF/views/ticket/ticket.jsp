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
              <td id="movie-list-td">
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
                  <button class="btn movie-name-btn" id="areaSelect" onclick="roadArea(${mvList.m_cd });">
                    ${mvList.title}
                  </button>
                  <input id="hdTitle" type="hidden" value="${mvList.title }">
                  <input id="hdMcd" type="hidden" value="${mvList.m_cd }">
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
        <div class="theater-location-wrapper" id="theater-location-wrapper">
<!--           <button class="theater-location" id="theater-location" onclick="roadTeather();"></button> -->
        </div>
        <div class="theater-place-wrapper" id="theater-place-wrapper">
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
      <div class="reserve-where">1관(Laser) 6층(총 240석)</div>
      <div class="reserve-time-wrapper" id="reserve-time-wrapper">
<!--         <button class=" btn reserve-time-button"> -->
<!--           <span class="reserve-time-want">12:20</span> -->
<!--           <span class="reserve-time-remain">240석</span> -->
<!--         </button> -->
      </div>
    </div>
    <div>
    </div>
  </div>
</div>
<div class="container p-0 ticket_tnb">
  <div class="row">
  <div class="col-md-3">
  </div>
  <div class="col-md-6">
<!--     <img class="tk-poster" alt="" src="/resources/img/ticket/popcon2.png"/> -->
<!--     <p>영화 제목</p> -->
  </div>
  <div id="ticket_tnb" class="col-md-3">
    <form class="moveSeatForm" action="/ticket/reserve.do" method="get">
      <input type="hidden" class="m_cd" name="m_cd" id="mvcd">
      <input type="hidden" class="t_area" id="selectedArea" name="t_area">
      <input type="hidden" class="selectedTheater" id="selectedTheater" name="t_name">
      <input type="hidden" class="selectedStcd" id="selectedStcd" name="s_t_cd">
      <input type="hidden" class="selectedLocation" name="selectedLocation">
      <input type="hidden" class="reserveDate" name="tkt_date" id="tkt_time">
      <input type="hidden" class="runningTime" name="tkt_time" id="runningTime">
      <sec:authorize access="isAuthenticated()">
        <input type="hidden" class="id" name="id" value="<sec:authentication property="principal.member.userid"/>">      
      </sec:authorize>
      <button class="moveSeatButton btn btn-primary" type="submit" >예약하기</button>
    </form>
  </div>
  </div>
</div>
<%@ include file="../footer.jsp"%>