
const date1 = new Date();
console.log(date1.getFullYear());
const lastDay1 = new Date(date1.getFullYear(), date1.getMonth() + 1, 0);
const reserveDate1 = document.querySelector('.t_date2');
const theaterPlace1 = document.querySelectorAll('.theater-place');
const reserveTimeWant1 = document.querySelectorAll('.reserve-time-want');
const inputTitle1 = document.querySelector('.title');
const inputSelectedTheater1 = document.querySelector('.selectedTheater');
const inputReserveDate1 = document.querySelector('.reserveDate');
const inputRunningTime1 = document.querySelector('.runningTime');
const moveSeatForm1 = document.querySelector('.moveSeatForm');
const moveSeatButton1 = document.querySelector('.moveSeatButton');
const movieAge1 = document.querySelector('.movieAge');

let movieListAge1 = '';
let year1 = 0;
let month1 = 0;

document.addEventListener('DOMContentLoaded', () => {
    filmDate();
});

function filmDate() {
    const weekOfDay1 = ['日', '月', '火', '水', '木', '金', '土'];
    year1 = date1.getFullYear();
    month1 = date1.getMonth()+1;
    const spanDay1 = document.createElement('span')
    
    //고정된 css
    spanDay1.classList = 't_spanmonth';
    
    spanDay1.innerHTML = month1+'月';
    reserveDate1.append(spanDay1);
    
    
    for (i = date1.getDate(); i <= lastDay1.getDate(); i++) {
        const button1 = document.createElement('button');
        const spanWeekOfDay1 = document.createElement('span');
        const spanDay1 = document.createElement('span');

        //class넣기
        button1.classList = 'theater_date theater_datelist';
        spanWeekOfDay1.classList = 'theater_date_week';
        spanDay1.classList = 'movie-day';

        //weekOfDay[new Date(2022-03-날짜)]
        const dayOfWeek1 =
            weekOfDay1[new Date(year1 + '-' + month1 + '-' + i).getDay()];

        //요일 넣기
        if (dayOfWeek1 === '토') {
            spanWeekOfDay1.classList.add('saturday');
            spanDay1.classList.add('saturday');
        } else if (dayOfWeek1 === '일') {
            spanWeekOfDay1.classList.add('sunday');
            spanDay1.classList.add('sunday');
        }
        //spanWeekOfDay1.innerHTML = dayOfWeek1;
        //button1.append(spanWeekOfDay1);
        //날짜 넣기
        spanDay1.innerHTML = i;
        button1.append(spanDay1);
        //button.append(i);

        spanWeekOfDay1.innerHTML = dayOfWeek1;
        reserveDate1.append(spanWeekOfDay1);
        
        reserveDate1.append(button1);

        dayClickEvent1(button1);
    }
}
function dayClickEvent1(button) {
    button.addEventListener('click', function() {
        const movieDateWrapperActive = document.querySelectorAll(
            '.theater-date-wrapper-active'
        );
        movieDateWrapperActive.forEach(list => {
            list.classList.remove('theater-date-wrapper-active');
        });
        button.classList.add('theater-date-wrapper-active');
        console.log(button.childNodes[1].innerHTML);
        
        // 이거 콘솔에 2022.02.20(수) 이렇게 찍어주는건데 내꺼랑 충돌나서 주석으로 막아놈 이상있음 말해줘
        //inputReserveDate.value =
        //    year +
        //    '.' +
        //    month +
        //    '.' +
        //    button.childNodes[1].innerHTML +
        //    '(' +
        //    button.childNodes[0].innerHTML +
        //    ')';
        //console.log(inputReserveDate.value);
    });
}

//상단탭 메뉴 시작
function citycheck(tharea){
  $.ajax({
        type : "get",
        url : '/theater/cityCheck.do?t_area='+tharea,
        dataType : "json",
        success : function(data1) {
           let city="";
           for(let j=0;j<data1.length;j++){
             
             city+="<div class='t_citydata t_citydataline'>";
             city+="<strong><a href='javascript:void(0)' onclick='citycheck2(\""+data1[j].t_name+"\");'>"+data1[j].t_name+"</a></strong>";
             city+="</div>";
             
           }
           $('#sub-low2').remove();
           $('#sub-low').remove();
          
           $('#t_subcity').html(city);
           
        },
        error : function() {
           alert("error1");
        }
     }); //ajax end
}
//하단리스트
function citycheck2(thcity){
  $.ajax({
        type : "get",
        url : '/theater/cityCheck2.do?t_name='+thcity,
        dataType : "json",
        success : function(data2) {
           let subcity1="";
             subcity1+="<div class='t_subcitydata t_subcitydatainfo'>";
             subcity1+="<div class='section-title'>";
             subcity1+="<h2>"+data2[0].t_name+"</h2>";
             subcity1+="</div>";
             subcity1+="</div>";
             subcity1+="<div class='t_infotext'>";
             subcity1+="<strong>총 상영관 수 <span>"+data2[0].t_screen+"개관</span></strong>";
             subcity1+="<strong class='t_sit'>총 좌석수 <span>"+data2[0].t_seat+"석</span></strong>"
             subcity1+="</div>";
             subcity1+="<div class='t_infotext'>";
             subcity1+="<strong>"+data2[0].t_address+"<span>"
             subcity1+="</div>";

           
           $('#t_subcity1').html(subcity1);
        },
        error : function() {
           alert("error2");
        }
     }); //ajax end
}

