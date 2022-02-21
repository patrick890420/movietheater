<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg"><img style="height:420px;" src="/upload/${view.poster}" alt="">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${view.title }</h3>
                                <span>${view.subtitle }</span>
                            </div>
                            <div class="anime__details__rating">
                              <fieldset class="rating">
                                <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                                <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                                <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                                <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                                <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                                <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                            </fieldset>
                                <span>1.029 Votes</span>
                            </div>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>장르</span> 장르</li>
                                            <fmt:parseDate value="${view.rdate}" var="dateValue" pattern="yyyy-MM-dd"/>
                                            <li><span>개봉일</span><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></li>
                                            <li><span>Type:</span> 감독</li>
                                            <li><span>Studios:</span> 배우</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>Scores:</span> 평점(별점)</li>
                                            <li><span>Status:</span> 상영 상태</li>
                                            <li><span>상영 시간</span>${view.rtime } 분</li>
                                            <li><span>상영 등급</span> ${view.rate }</li>
                                        </ul>
                                    </div>
                                    <p>${view.intro }</p>
                                </div>
                            </div>
                            <div class="anime__details__btn mv-txt-center">
                                <a href="#" class="watch-btn btn btn-primary"><span>Watch Now</span></a>
<!--                                 <a><i class="fa fa-angle-right"></i></a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row register">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="/resources/img/anime/review-1.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Chris Curry - <span>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                    "demons" LOL</p>
                                </div>
                            </div>
                            
                           
                       
                       
                        </div>
                        <div class="anime__details__form">
                          <div class="section-title">
                                <h5>Your Comment</h5>
                              <div class="test">
                              <fieldset class="rating1">
                                <input type="radio" id="star5.1" name="rating1" value="5" /><label class = "full" for="star5.1" title="Awesome - 5 stars"></label>
                                <input type="radio" id="star4.1half" name="rating1" value="4 and a half" /><label class="half" for="star4.1half" title="Pretty good - 4.5 stars"></label>
                                <input type="radio" id="star4.1" name="rating1" value="4" /><label class = "full" for="star4.1" title="Pretty good - 4 stars"></label>
                                <input type="radio" id="star3.1half" name="rating1" value="3 and a half" /><label class="half" for="star3.1half" title="Meh - 3.5 stars"></label>
                                <input type="radio" id="star3.1" name="rating1" value="3" /><label class = "full" for="star3.1" title="Meh - 3 stars"></label>
                                <input type="radio" id="star2.1half" name="rating1" value="2 and a half" /><label class="half" for="star2.1half" title="Kinda bad - 2.5 stars"></label>
                                <input type="radio" id="star2.1" name="rating1" value="2" /><label class = "full" for="star2.1" title="Kinda bad - 2 stars"></label>
                                <input type="radio" id="star1.1half" name="rating1" value="1 and a half" /><label class="half" for="star1.1half" title="Meh - 1.5 stars"></label>
                                <input type="radio" id="star1.1" name="rating1" value="1" /><label class = "full" for="star1.1" title="Sucks big time - 1 star"></label>
                                <input type="radio" id="starhalf.1" name="rating1" value="half" /><label class="half" for="starhalf.1" title="Sucks big time - 0.5 stars"></label>
                            </fieldset>
                            </div>
                            </div>
                            <input type="hidden" name="rwriter" value="rwriter">
                            <form  action="#">
                            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                                <textarea class="cmt-border" name="review" placeholder="Your Comment"></textarea>
                                <button class="btn btn-primary fa fa-location-arrow register finish" type="submit"> Review</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>you might like...</h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="/resources/img/sidebar/tv-1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="/resources/img/sidebar/tv-2.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="/resources/img/sidebar/tv-3.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="/resources/img/sidebar/tv-4.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<script type="text/javascript" src="/resources/js/movie/review.js"></script>
<script>
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/board/addComment.do'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/board/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
                    html += data[i].comment + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
 
</script>

<script>
     $(document).ready(function(){

          $(".register").on("click", function(e){
            e.preventDefault();
            $(".register").show();
            $(this).hide();
        });


      $(".cancel").on("click", function(e){
            e.preventDefault();
            $(".register-form").hide();
            $(".register").show();
        });

     });
     
     
     var bno = "${board.bno}";

     // 등록버튼을 눌렀을 때
     $(".finish").on("click", function(e){
       e.preventDefault();
       // 필요한 데이터: 댓글 작성자, 댓글
       var replyer = $("input[name='rwriter']").val();
       var reply = $("textarea[name='review']").val();
       
       if(rwriter == "" || review == "" ) {return;}
       
       replyService.add({m_cd: m_cd, review:review, rwriter:rwriter}, function(result){
         alert(result);
         $("input[name='rwriter']").val("Rwriter");
         $("textarea[name='review']").val("Review");
           $(".register").show();
         pageNum = 1;
         showList(pageNum);
       });
     });
     
     function showReplyPage(){
       var startNum
       var endNum
       var realEnd

   // 현재 페이지가 무엇인지 알아야하므로 페이지 번호를 받아와야 한다.
   function showList(){
       movieService.getList();
   }
       
       
       
       ar m_cd = "${review.m_cd}";
       var replyUL = $(".replies");
      var pageNum = 1;

      showList(1);
function showReplyPage(rcode){
  
  var str = "";
  var endNum = Math.ceil(pageNum / 10.0 ) * 10;
  var startNum = endNum - 9;
  var realEnd = Math.ceil(rcode / 10.0);
  
  if(endNum > realEnd ){
    endNum = realEnd;
  }
  
  var prev = startNum != 1;
  var next = endNum * 10 < rcode;
  
  if(matchMedia("screen and (max-width:918px)").matches){
    if(pageNum != 1 ) {
      str += "<a class='changePage' href='"+ (pageNum - 1) +"'><code>&lt;</code></a>"
    }
      str += "<code>"+ pageNum + "</code>"; 
    if(pageNum != realEnd) {
      str += "<a class='changePage' href='"+ (pageNum + 1) +"'><code>&gt;</code></a>"
    }
  } else {
    if(prev){
      str += "<a class='changePage' href='"+ (startNum - 1) +"'><code>&lt;</code>"
    }
    for(let i = startNum; i <= endNum; i++ ){
      if(pageNum == i){
        str += "<code>" + i +"</code>";
        continue;
      }
      str += "<a class='changePage' href='"+ i +"'><code>" + i + "</code></a>"
    }
    if(next){
      str += "<a class='changePage' href='"+ (endNum + 1) +"'><code>&gt;</code></a>"
    }
  }
  replyPaging.html(str); // DOM
}

// 위임 
$(".paging").on("click", "a.changePage", function(e){
e.preventDefault();
pageNum = parseInt($(this).attr("href"));
console.log(pageNum)
showList(pageNum);
});   

// 현재 페이지가 무엇인지 알아야하므로 페이지 번호를 받아와야 한다.
function showList(page){
  replyService.getList({m_cd:m_cd, page: page||1}, function(rcode, list){
    console.log("rcode: " + rcode);
    console.log("list : " + list);
            
    var str = "";
    if(list == null || list.length == 0 ){
      if(pageNum > 1 ) { // 2페이지에서 하나 남은 댓글을 삭제하면 1페이지로 가야되는데 2페이지로 유지되면서 등록된 댓글이 없다고 나온다.
        pageNum -= 1; // 내 페이지를 1개 감소 시키고 
        showList(pageNum); // 다시 그리기.
      }
      replyUL.html("등록된 댓글이 없습니다.");
      return;
    }
    
    for(let i = 0, len = list.length || 0; i < len; i++){
      str += "<li data-rcode='"+ list[i].rcode +"'>";
      // data-rno 라는 옵션을 통해서 파일첨부 때 이용할 수 있다.
      str += "<strong>" + list[i].replyer + "</strong>";
      str += "<p class='review"+ list[i].rcode +"'>" + list[i].review + "</p>";
      // 모든 p태그의 reply라는 클래스 반복문을 돌리기 번거로우니, RNO를 붙여 연결을 시킨다.
      str += "<div style='text-align:right;'>";
      str += "<a class='modify' href='"+ list[i].rcode +"'>수정</a>";
      str += "<a class='finish' href='"+ list[i].rcode +"' style='display:none;'>수정완료</a>";
      str += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
      str += "<a class='remove' href='"+ list[i].rcode +"'>삭제</a>";
      str += "</div><div class='line'></div></li>";
    }
    replyUL.html(str);
    showReplyPage(replyCnt);
    
  });
}
</script>
<%@ include file = "../footer.jsp" %>
