package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ScheduleVO {
  private int  m_cd;
  private String title;
  private String subtitle;
  private String rdate;
  private String rtime;
  private String rate;
  private String intro;
  private String poster;
  
  private int s_t_cd; //상영 상세 코드
  private int film_cd;  //상영코드
  private Date start_time; //영화시작일시
  
  private int screen_cd; //상영관코드
}
