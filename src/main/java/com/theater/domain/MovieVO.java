package com.theater.domain;

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
