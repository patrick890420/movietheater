
const date = new Date();
console.log(date.getFullYear());
const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
const reserveDate = document.querySelector('.reserve-date');
const theaterPlace = document.querySelectorAll('.theater-place');
const theaterLocation = document.querySelectorAll('.theater-location');
const reserveTimeWant = document.querySelectorAll('.reserve-time-want');
const inputTitle = document.querySelector('.title');
const inputSelectedTheater = document.querySelector('.selectedTheater');
const inputSelectedStcd= document.querySelector('.selectedStcd');
const inputSelectedLocation = document.querySelector('.selectedLocation');
const inputReserveDate = document.querySelector('.reserveDate');
const inputRunningTime = document.querySelector('.runningTime');
const moveSeatForm = document.querySelector('.moveSeatForm');
const moveSeatButton = document.querySelector('.moveSeatButton');
const movieAge = document.querySelector('.movieAge');

let movieListAge = '';
let year = 0;
let month = 0;

document.addEventListener('DOMContentLoaded', () => {
    addDate();
});

function addDate() {
    const weekOfDay = ['日', '月', '火', '水', '木', '金', '土'];
    year = date.getFullYear();
    month = date.getMonth()+1;
    reserveDate.append(year + '/' + month);
    for (i = date.getDate(); i <= lastDay.getDate(); i++) {
        const button = document.createElement('button');
        const spanWeekOfDay = document.createElement('span');
        const spanDay = document.createElement('span');

        //class넣기
        button.classList = 'btn movie-date-wrapper';
        spanWeekOfDay.classList = 'movie-week-of-day';
        spanDay.classList = 'movie-day';

        //onclick 넣기
//        button.onclick = function() { 
//        
//        
//        
//        }
        
        //weekOfDay[new Date(2022-03-날짜)]
        const dayOfWeek =
            weekOfDay[new Date(year + '-' + month + '-' + i).getDay()];

        //요일 넣기
        if (dayOfWeek === '土') {
            spanWeekOfDay.classList.add('saturday');
            spanDay.classList.add('saturday');
        } else if (dayOfWeek === '日') {
            spanWeekOfDay.classList.add('sunday');
            spanDay.classList.add('sunday');
        }
        spanWeekOfDay.innerHTML = dayOfWeek;
        button.append(spanWeekOfDay);
        //날짜 넣기
        spanDay.innerHTML = i;
        button.append(spanDay);
        //button.append(i);

        reserveDate.append(button);

        dayClickEvent(button);
    }
}

function dayClickEvent(button) {
    button.addEventListener('click', function() {
        const movieDateWrapperActive = document.querySelectorAll(
            '.movie-date-wrapper-active'
        );
        movieDateWrapperActive.forEach(list => {
            list.classList.remove('movie-date-wrapper-active');
        });
        button.classList.add('movie-date-wrapper-active');
        //console.log(button.childNodes[1].innerHTML);
        inputReserveDate.value =
            year +
            '-' +
            month +
            '-' +
            button.childNodes[1].innerHTML;
        //console.log(inputReserveDate.value);
          
        var getMcd = document.querySelector('#mvcd').value;
        var tName = document.querySelector('#selectedTheater').value;
        var tArea = document.querySelector('#area').value;
        
        $.ajax({
          type : "get",
          url : '/ticket/daySelect.do?start_time='+inputReserveDate.value+'&m_cd='+getMcd+'&t_name='+tName+'&t_area='+tArea,
          dataType : "json",
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          success : function(data) {
            let pushDiv="";
            for(let i=0;i<data.length;i++){
              pushDiv+="<button class='btn reserve-time-button' onclick=getStcd("+data[i].s_t_cd+");>";
              pushDiv+="<span class='reserve-time-want' onclick=getStcd("+data[i].s_t_cd+");>"+data[i].start_time+"</span>";
              pushDiv+="<span class='reserve-time-remain'>"+data[i].t_seat+"</span>";
              pushDiv+="<input type='hidden' value='"+data[i].s_t_cd+"' id='hdStcd'>";
              pushDiv+="</button>";
            }
            $('#reserve-time-wrapper').html(pushDiv);
            document.querySelectorAll('.reserve-time-want').forEach(list => {
              list.addEventListener('click', function() {
              const reserveTimeActive = document.querySelectorAll('.reserve-time-active');
              reserveTimeActive.forEach(li => {
                li.classList.remove('reserve-time-active');
              });
              list.classList.add('reserve-time-active');
              //console.log(list.innerHTML);
              inputRunningTime.value = list.innerHTML;
            });
          });   
          },
          error : function() {
             alert("error");
          }
       }); //ajax end
    });
}

function getStcd(stcd) {
  inputSelectedStcd.value = stcd;
}
theaterPlace.forEach(list => {
    list.addEventListener('click', function() {
        const theaterPlaceWrapper = document.querySelectorAll('.theater-place-active');
        theaterPlaceWrapper.forEach(li => {li.classList.remove('theater-place-active');
        });
        list.classList.add('theater-place-active');
        console.log(list.innerHTML);
        inputSelectedTheater.value = list.innerHTML;
    });
});


var movieBtn = document.getElementsByClassName("movie-name-btn");

//var movieBtn = document.getElementById('areaSelect');

      function handleClick10(event) {
        //console.log(event.target);
        //console.log(this);
        // 콘솔창을 보면 둘다 동일한 값이 나온다
        //console.log(event.target.classList);
        if (event.target.classList[1] === "clicked") {
          event.target.classList.remove("clicked");
        } else {
          
          for (var i = 0; i < movieBtn.length; i++) {
            movieBtn[i].classList.remove("clicked");
          }
          
          event.target.classList.add("clicked");
        }
      }
      function init() {
        for (var i = 0; i < movieBtn.length; i++) {
          movieBtn[i].addEventListener("click", handleClick10);
        }
      }
      init();

var areaDiv = document.getElementsByClassName('theater-location');
//var areaDiv = theaterLocation;

function handleClick(event) {
 // console.log(event.target);
//  console.log(event.target.classList);
  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < areaDiv.length; i++) {
      areaDiv[i].classList.remove("clicked");
    }
      event.target.classList.add("clicked");
    }
  }
  function ainit() {
    for (var i = 0; i < areaDiv.length; i++) {
      areaDiv[i].addEventListener("click", handleClick);
    }
  }
ainit();

//영화 제목 선택시 지역 로딩기능
   var csrfHeaderName = "${_csrf.headerName}";
   var csrfTokenValue = "${_csrf.token}";
 function roadArea(mcd){
   $("#theater-location").empty();
   //document.getElementById('theater-location').classList.remove('theater-place-active');
   var Mvcd =  document.querySelector('#mvcd');
   Mvcd.value= mcd;

   $.ajax({
         type : "get",
         url : '/ticket/areaSelect.do?m_cd='+mcd,
         dataType : "json",
         success : function(data) {
          
            let res="";
            for(let i=0;i<data.length;i++){
            res+="<button class='btn theater-location' id='theater-location' onclick='roadTheater("+data[i].t_area+","+data[i].m_cd+");'>"+data[i].area_name+"</button>";
            res+="<input type='hidden' id='area' "+data[i].t_area+"/>";
            }
            $('#theater-location-wrapper').html(res);
            
            var areaDiv = document.getElementsByClassName('theater-location');
            //var areaDiv = theaterLocation;
            
            function handleClick(event) {
             // console.log(event.target);
            //  console.log(event.target.classList);
              if (event.target.classList[1] === "clicked") {
                event.target.classList.remove("clicked");
              } else {
                for (var i = 0; i < areaDiv.length; i++) {
                  areaDiv[i].classList.remove("clicked");
                }
                  event.target.classList.add("clicked");
                }
              }
              function ainit() {
                for (var i = 0; i < areaDiv.length; i++) {
                  areaDiv[i].addEventListener("click", handleClick);
                }
              }
            ainit();
            
         },
         error : function() {
            alert("error");
         }
      }); //ajax end
}

function roadTheater(tcd,mcd){
   $.ajax({
         type : "get",
         url : '/ticket/theaterSelect.do?t_cd='+tcd+'&m_cd='+mcd,
         dataType : "json",
         success : function(data1) {
            let res1="";
            for(let j=0;j<data1.length;j++){
            res1+="<button class='btn theater-place' id='theater-place' >"+data1[j].t_name+"</button>";
            }
            $('#theater-place-wrapper').html(res1);
            
            document.querySelectorAll('.theater-place').forEach(list => {
              list.addEventListener('click', function() {
                  const theaterPlaceWrapper = document.querySelectorAll('.theater-place-active');
                  theaterPlaceWrapper.forEach(li => {li.classList.remove('theater-place-active');
                  });
                  list.classList.add('theater-place-active');
                  console.log(list.innerHTML);
                  inputSelectedTheater.value = list.innerHTML;
              });
          });
         },
         error : function() {
            alert("error");
         }
      }); //ajax end
}

