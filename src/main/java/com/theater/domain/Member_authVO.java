package com.theater.domain;

import lombok.Data;

@Data
public class Member_authVO {

  private String userid; //회원id
  private String auth;  //권한
}
