package com.theater.service;

import com.theater.domain.MemberVO;

public interface MembersService {
	
	public void Memberinsert(MemberVO mvo) throws Exception; //흠냐뤼 이친구 쓰는거 맞나 ㅇㅅㅇa
	
	// 이메일 중복체크
	public static int idChk(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
	


