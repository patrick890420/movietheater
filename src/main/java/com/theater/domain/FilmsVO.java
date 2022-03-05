package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class FilmsVO {

  private int film_cd; //상영코드
  private int m_cd;  //영화코드
  private int screen_cd; //상영관코드
  private String film_status;
}
