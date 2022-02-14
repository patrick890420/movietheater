package com.theater.domain;

import lombok.Data;

@Data
public class DirectorsVO {
  
  /* DIRECTORS + M_DIRECTORS */
  
  private String d_cd; //감독코드
  private String d_name;  //감독이름
  private String d_img;  //감독이미지
  private int m_cd;      //영화코드
  private String m_d_cd;  //감독매칭코드

}


