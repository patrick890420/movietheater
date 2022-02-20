package com.theater.domain;

import lombok.Data;

@Data
public class TheatersVO {
  private int t_cd;       //극장 코드
  private int t_area;     //지역
  private String t_name;     //극장이름
  private String t_address;  //주소
  private int t_screen;   //총상영관수
  private int t_seat;     //총좌석수
}
