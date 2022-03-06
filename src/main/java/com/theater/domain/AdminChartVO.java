package com.theater.domain;

import lombok.Data;

@Data
public class AdminChartVO {

  private String men;
  private String women;
  
  private String age;
  private int agegroup;
  
  private String tkt_date;
  private int charge;
  
}
