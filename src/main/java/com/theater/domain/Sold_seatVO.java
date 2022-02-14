package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Sold_seatVO {

  private int sold_cd; //예매완료좌석코드
  private int s_t_id;  //상영상세코드
  private String seat_cd;  //좌석코드
  private int tkt_cd;       //예매코드
  private Date seat_type;   //관객유형
  private int seat_price;   //좌석가격
}
