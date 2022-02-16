package com.theater.mapper;

import com.theater.domain.MemberVO;


public interface MembersMapper {
	
	//회원가입
	 public void MemberInsert(MemberVO mvo);
	 
	 //아이디 중복 체크
	 public int idChk(String id);

}
