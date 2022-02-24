package com.theater.service;

import com.theater.domain.MemberVO;

public interface MembersService {

	public void register(MemberVO mvo);	
	
	public int idChk(String userid);
	
	 public MemberVO memberLogin(MemberVO mvo);
	 
	 public MemberVO selectMember(String userid);
	 
	 public void memberUpdate(MemberVO mvo);
	 
	 public String pwChk(String userpw); // 비밀번호 체크
	 
	 public MemberVO selectPw(String userid); //흠.. 비번 조회도 필요할 것 같아서...?
	 
	 public void mypasspro(MemberVO mvo); //비밀번호 수정 처리 해 주는 친구

	 
	 

  
	 

}
