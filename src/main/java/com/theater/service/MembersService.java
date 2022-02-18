package com.theater.service;

import com.theater.domain.MemberVO;

public interface MembersService {

	public void register(MemberVO mvo);	
	
	public int idChk(String userid);
	
	 public MemberVO memberLogin(MemberVO mvo);

}
