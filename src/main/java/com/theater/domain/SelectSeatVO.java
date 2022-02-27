package com.theater.domain;

import java.util.List;

import lombok.Data;

@Data
public class SelectSeatVO {

  private int sold_cd;
  private int s_t_cd;
  private String seat_cd;//좌석코드 string
  //배열필요 private int seat_cd;
  private int tkt_cd;
  private int seat_price;
  
  private String poster;
  private String title;
  private String subtitle;
  private String tkt_time;
  private String tkt_date;
  
  private  List<String> seatList;

}
