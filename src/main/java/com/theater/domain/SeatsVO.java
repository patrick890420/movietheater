package com.theater.domain;

import lombok.Data;

@Data
public class SeatsVO {

  private String seat_cd; //좌석코드
  private int screen_cd;  //상영관코드
  private String seat_name;  //좌석명
  private String seat_num;   //좌석번호
}
