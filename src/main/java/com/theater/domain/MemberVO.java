package com.theater.domain;

import lombok.Data;

@Data
public class MemberVO {

  private String id; //회원id
  private String pwd;  //비밀번호
  private String name; //이름
  private String birth; //생년월일
  private String gender; //성별
  private String phone; //연락처
  private String email; //이메일
}