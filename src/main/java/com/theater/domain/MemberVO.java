package com.theater.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

  private String userid;
  private String userpw;
<<<<<<< HEAD
  private String username;
=======
  private String userName;
>>>>>>> branch 'develop' of https://github.com/patrick890420/movietheater.git
  private String birth; //생년월일
  private String gender; //성별
  private String phone; //연락처
  private String email; //이메일
  
  private List<Member_authVO> authList; /* 여러개의 사용자 권한 */
}