package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class TicketsVO {
  
  private int tkt_cd;  //예매코드
  private String id;    //회원id
  private int s_t_cd;   //상영상세코드
  private int m_cd;     //영화코드
  private Date tkt_time;  //예매일시
  private int tkt_nums;   //인원수
}
