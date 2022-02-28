package com.theater.mapper;

import java.util.List;

import com.theater.domain.MemberVO;
import com.theater.domain.ReListVO;

public interface MembersMapper {

  //회원가입
  public void MemberInsert(MemberVO mvo);

  //아이디 중복 체크
  public int idChk(String userid);

  public MemberVO selectMember(String userid);
  
  //마이페이지 수정
  public void memberUpdate(MemberVO mvo);
  
  //비밀번호 중복 체크
 // public String pwChk(String userpw);
  
  //비밀번호 수정
  public void mypasspro(MemberVO mvo);
  
  public MemberVO selectPw(String userid);
  
  //나의 예매 내역 조회....
  
  public List<ReListVO> getRelist(String id); //리스트로 담아야 하는 것 아닌지? 
  
  //admin 멤버 조회
 public List<MemberVO> memberSelect();


}//class
