package com.theater.domain;

import lombok.Data;

@Data
public class NationVO {

  /* NATIONS + M_NATIONS */
  
  private String n_cd; //국가코드
  private String n_name;  //국가이름
  private int m_cd;      //영화코드
  private String m_n_cd;  //국가매칭코드
}
