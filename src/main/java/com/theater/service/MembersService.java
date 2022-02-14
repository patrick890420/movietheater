package com.theater.service;

import com.theater.domain.MemberVO;

public interface MembersService {
	
	public int idCheck(String id);
  public void register(MemberVO mvo);
	
	// 이메일 중복체크
	public static int idChk(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
	


