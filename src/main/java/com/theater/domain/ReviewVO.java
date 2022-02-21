package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

  private int rcode; //리뷰코드
  private int tkt_cd; //예매코드
  private String review; //리뷰내용
  private String rwriter; //리뷰작성자
  private Date rdate; //리뷰 작성일 sysdate
  private int rgrade;  //평점
  private int m_cd;
  
}
