package com.theater.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

  private String userid;
  private String userpw;
  private String username;
  private String birth; //생년월일
  private String gender; //성별
  private String phone; //연락처
  private String email; //이메일
  
  private List<Member_authVO> authList; /* 여러개의 사용자 권한 */
}