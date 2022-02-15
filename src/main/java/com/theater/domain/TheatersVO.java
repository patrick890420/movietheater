package com.theater.domain;

import lombok.Data;

@Data
public class TheatersVO {
  private String t_cd;       //극장 코드
  private String t_area;     //지역
  private String t_name;     //극장이름
  private String t_address;  //주소
  private String t_info;     //극장소개 (필요없을것 같음)
  private String t_screen;   //총상영관수
  private String t_seat;     //총좌석수
}
