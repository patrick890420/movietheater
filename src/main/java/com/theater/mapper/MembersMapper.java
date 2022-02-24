package com.theater.mapper;

import java.util.List;

import com.theater.domain.MemberVO;

public interface MembersMapper {

  //회원가입
  public void MemberInsert(MemberVO mvo);

  //아이디 중복 체크
  public int idChk(String userid);

  public MemberVO selectMember(String userid);
  
  //마이페이지 수정
  public void memberUpdate(MemberVO mvo);
  
  //비밀번호 중복 체크
  public String pwChk(String userpw);
  
  //비밀번호 수정
  public void mypasspro(MemberVO mvo);
  
  public MemberVO selectPw(String userid);


}//class
