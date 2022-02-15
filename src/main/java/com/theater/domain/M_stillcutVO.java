package com.theater.domain;

import lombok.Data;

@Data
public class M_stillcutVO {

  private int still_cd; //스틸컷코드
  private int m_cd;     //영화코드
  private String still_img1;      //스틸컷이미지1
  private String still_img2;      //스틸컷이미지2
  private String still_img3;      //스틸컷이미지3
  private String still_img4;      //스틸컷이미지4
}
