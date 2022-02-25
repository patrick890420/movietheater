package com.theater.domain;


import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {

  private int m_cd;
  private int tkt_cd;
  private int t_area;
  private String t_name;
  private int t_cd;
  private String area_name;
  private String start_time;
  private int t_seat;
  private int s_t_cd;
  private Date tkt_date;
  private String tkt_time;
  private String id;
  
  
}
