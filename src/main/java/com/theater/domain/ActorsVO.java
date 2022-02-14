package com.theater.domain;

import lombok.Data;

@Data
public class ActorsVO {

  /* ACTORS + M_ACTORS */
  
  private String a_cd; //배우코드
  private String a_name;  //배우이름
  private String a_img;  //배우이미지
  private int m_cd;      //영화코드
  private String m_a_cd;  //배우매칭코드
  
  
}
