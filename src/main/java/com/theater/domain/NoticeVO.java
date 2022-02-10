package com.theater.domain;

import lombok.Data;

@Data
public class NoticeVO {

  
  private int nt_cd;          //공지사항코드
  private String title;       //제목
  private String e_img;       //이미지
  private String content;     //내용
  private String wdate;       //작성일
  private int hits;      //조회수

}//class
