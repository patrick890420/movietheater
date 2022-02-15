<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- Hero Section Begin -->
<section class="hero">
<div class="container">
  <div class="row event8">
    <div class="col-md-12 event9">
      <h2>공지사항</h2><!-- 공지사항 -->
    </div><!-- md12 -->
  </div><!-- row -->
    <div class="row ">
      
    </div><!-- row -->
  </div><!-- container -->
</section><!-- hero -->
<!-- Hero Section End -->


<!-- search -->
<div class="notice_search">
<form name="myform" method="get" action="/notice/notice.do" id="searchForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  <div class="container">
    <div class="row notice24">
      <div class="col-lg-9" style="padding-left: 790px;">
      <select name="type" class="select">
        <option value=""<c:out value="${pageMaker.cri.type==null?'selected':''}"/>>선택</option>
        <option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
      </select>
        </div>
        <div class="col-lg-3 event45">
          <label>
          <input type="text" class="event47" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>' placeholder="검색어를 입력해 주세요">
          <input type="hidden" name="pageNun" value="${pageMaker.cri.pageNum}">
          <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
          <button type="submit" style="background:none; border:none;">
            <span class="icon_search"></span>
          </button>
          </label>
        </div><!-- lg3 -->
    </div><!-- row -->
  </div><!-- container -->
</form>
</div><!-- notice_search -->


<!-- 총 게시글 -->
<div class="col-md-3 event60">
  <p>총게시글<span>${pageMaker.total}</span>&nbsp;&nbsp;건</p>
</div><!-- md-3 -->


<!-- Table -->
<section class="notice">
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <table class="table table-hover">
        <colgroup>
          <col width="10%">
          <col width="*">
          <col width="10%">
<!--           <col width="10%"> -->
          <col width="10%">
          <col width="10%">
        </colgroup>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>이미지</th>
<!--           <th>内容</th>내용 -->
          <th>작성일</th>
          <th>조회수</th>
        </tr>
        
        <tbody>
          <c:set var="num" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>
          <c:forEach var="list" items="${list}">
        
<!--         내용 -->
        <tr>
          <td>${num}</td>
          <td class="title"><a href="noticeview.do?bno=${list.nt_cd}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${list.title}</a></td>
          <td>이미지</td>
<!--           <td>내용</td> -->
          <td>
            <fmt:parseDate var="dateString" pattern="yyyy-MM-dd" value="${nlist.wdate}"/></td>
            <fmt:formatDate var="dateString" value="${dateString}" pattern="yyyy-MM-dd"/>
          </td>
          <td>${list.hits}</td>
        </tr>
        <c:set var="num" value="${num-1}"/>
        </c:forEach>
        </tbody>
      </table>
      
      
    </div><!-- md-12 -->
  </div><!-- row -->
</div><!-- container -->
<div class="paging">
    <c:if test="${pageMaker.prev}">
      <a href="${pageMaker.startPage-1}"><i class="fa  fa-angle-double-left"></i></a>
    </c:if>
    
    <!-- 반복실행하라는 뜻 -->
    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
      <a href="${num}" class="${pageMaker.cri.pageNum == num?'active':''}">${num}</a>
    <!--                  연산자 조건이 참이면 active 추가/아니면''  -->
    </c:forEach>
    <c:if test="${pageMaker.next}"> 
      <a href="${pageMaker.startPage+1}"><i class="fa  fa-angle-double-right"></i></a>
    </c:if> 
    
                  
    </div><!-- padding -->
</section><!-- hero -->
<form id="actionForm" action="notice.do" method="get">
    <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
    <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
    <input type="hidden" name="type" value="${pageMaker.cri.type}">
    <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
  </form>

<script>
$(function() {
//검색
var searchForm= $("#searchForm");
  $(".btn_search").on("click",function(e){
    if(!searchForm.find("option:selected").val()){
      alert("검색종류 선택하세요");
      return false;
  }
  if(!searchForm.find("input[name='keyword']").val()){
    alert("키워드 입력");
    return false;
  }
  searchForm.find("input[name='pageNum']").val("1");
  e.preventDefault();
    
  searchForm.submit();
  })


});//function
</script>

<%@ include file="../footer.jsp" %>	