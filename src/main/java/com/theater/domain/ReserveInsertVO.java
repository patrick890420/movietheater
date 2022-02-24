package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveInsertVO {

  private int tkt_cd;
  private String id;
  private int s_t_cd;
  private int m_cd;
  private String tkt_time;
  private String tkt_date;
//  private int t_area;
  private String t_name;
  private String area_name;
  private String start_time;
//  private int t_seat;
  
}
