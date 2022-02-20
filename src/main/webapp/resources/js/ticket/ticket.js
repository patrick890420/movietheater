
const date = new Date();
console.log(date.getFullYear());
const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
const reserveDate = document.querySelector('.reserve-date');
const theaterPlace = document.querySelectorAll('.theater-place');
const theaterLocation = document.querySelectorAll('.theater-location');
const reserveTimeWant = document.querySelectorAll('.reserve-time-want');
const inputTitle = document.querySelector('.title');
const inputSelectedTheater = document.querySelector('.selectedTheater');
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
        button.classList = 'movie-date-wrapper';
        spanWeekOfDay.classList = 'movie-week-of-day';
        spanDay.classList = 'movie-day';

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
        console.log(button.childNodes[1].innerHTML);
        inputReserveDate.value =
            year +
            '.' +
            month +
            '.' +
            button.childNodes[1].innerHTML +
            '(' +
            button.childNodes[0].innerHTML +
            ')';
        console.log(inputReserveDate.value);
    });
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

theaterLocation.forEach(list => {
    list.addEventListener('click', function() {
        const theaterLocationWrapper = document.querySelectorAll('.theater-location-active');
        theaterLocationWrapper.forEach(li => {li.classList.remove('theater-location-active');
        });
        list.classList.add('theater-location-active');
        console.log(list.innerHTML);
        inputSelectedLocation.value = list.innerHTML;
    });
});


reserveTimeWant.forEach(list => {
    list.addEventListener('click', function() {
        const reserveTimeActive = document.querySelectorAll('.reserve-time-active');
        reserveTimeActive.forEach(li => {
            li.classList.remove('reserve-time-active');
        });
        list.classList.add('reserve-time-active');
        console.log(list.innerHTML);
        inputRunningTime.value = list.innerHTML;
    });
});

moveSeatButton.addEventListener('click', function() {
    if (!!inputTitle.value &&
        !!inputSelectedTheater.value &&
        !!inputReserveDate.value &&
        !!inputRunningTime.value
    ) {
        moveSeatForm.submit();
    } else {
        toastr.options = {
            positionClass: 'toast-top-full-width',
            progressBar: true,
            timeOut: 1000,
        };
        toastr.error(
            '<div style="color:white">すべての項目をチェックしてください</div>',
            '<div style="color:white">警告</div>', {
                timeOut: 3000,
            }
        );
    }
});

var movieDiv = document.getElementsByClassName('movie-name-btn');

function handleClick(event) {
 // console.log(event.target);
//  console.log(event.target.classList);
  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < movieDiv.length; i++) {
      movieDiv[i].classList.remove("clicked");
    }
      event.target.classList.add("clicked");
    }
  }
  function init() {
    for (var i = 0; i < movieDiv.length; i++) {
      movieDiv[i].addEventListener("click", handleClick);
    }
  }
init();

