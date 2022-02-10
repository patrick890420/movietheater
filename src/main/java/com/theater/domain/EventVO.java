package com.theater.domain;

import lombok.Data;

@Data
public class EventVO {


  private int event_cd;       //이벤트 코드
  private String title;       //제목
  private String kind;        //종류
  private String e_img;       //이미지
  private String content;     //내용
  private String wdate;       //작성일
  private String finish;      //종료여부
  private String sdate;       //시작일
  private String fdate;       //종료일
  
}//class
