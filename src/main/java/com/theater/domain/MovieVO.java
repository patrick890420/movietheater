package com.theater.domain;

import java.sql.Time;

import lombok.Data;

@Data
public class MovieVO {

  private int  m_cd;
  private String title;
  private String subtitle;
  private String rdate;
  private String rtime;
  private String rate;
  private String intro;
  private String poster;
  
}
