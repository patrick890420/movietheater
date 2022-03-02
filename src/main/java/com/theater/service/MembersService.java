package com.theater.service;

import java.util.List;

import com.theater.domain.MemberVO;
import com.theater.domain.ReListVO;

public interface MembersService {

	public void register(MemberVO mvo);	
	
	public int idChk(String userid);
	
	 public MemberVO memberLogin(MemberVO mvo);
	 
	 public MemberVO selectMember(String userid);
	 
	 public void memberUpdate(MemberVO mvo);
	 
//	 public String pwChk(String userpw); // 비밀번호 체크
	 
	 //비밀번호 조회
	 public MemberVO selectPw(String userid);
	 
	 //비밀번호 수정 처리
	 public void mypasspro(MemberVO mvo);
	 
	 //나의 예매 내역 조회
	 public List<ReListVO> getRelist(String id); 
	  
	 //admin 멤버 조회
	 public List<MemberVO> memberSelect();
	 
	 //회원 강제 탈퇴
	 public void adminDelete(String userid);



}//class
