package com.theater.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class TicketListVO {

  private int tkt_cd;  //예매코드
  private String id;    //회원id
  private String title;
  private String tkt_date;   //예매일시
  private int s_t_cd;   //상영상세코드
  private int m_cd;     //영화코드
  private String tkt_time;  //예매시간
  private int pay_cd; //결제코드=예매코드
  private int charge;  //결제금액
  private String pay_method; //결제수단
  private int pay_status;  //결제상태
  private String pay_name; //결제수단
  
}
