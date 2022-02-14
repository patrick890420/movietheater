package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Film_timetableVO {

  private int s_t_cd; //상영 상세 코드
  private int film_cd;  //상영코드
  private Date start_time; //영화시작일시
}
