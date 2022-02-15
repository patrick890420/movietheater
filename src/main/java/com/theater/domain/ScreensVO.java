package com.theater.domain;

import lombok.Data;

@Data
public class ScreensVO {
  
  private int screen_cd; //상영관코드
  private int t_cd; //극장코드
  private String screen_type; //상영관유형
  private String screen_name; //상영관이름
  private int seat_amount; //총좌석수
}


