package com.theater.service;

import com.theater.domain.MemberVO;

public interface MembersService {
	
	public int idCheck(String id);
  public void register(MemberVO mvo);
	

}
