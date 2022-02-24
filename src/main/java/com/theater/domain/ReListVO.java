package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReListVO {
  private int  m_cd;
  private String title;
  private String subtitle;
  private String poster;
  
  private int tkt_cd;  //예매코드
  private String id;    //회원id
  private String tkt_time;  //예매시간
  private int tkt_nums;   //인원수
  private String tkt_date;
  
  private String seat_cd;  //좌석코드
  
}
