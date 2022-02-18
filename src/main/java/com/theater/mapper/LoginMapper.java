package com.theater.mapper;

import com.theater.domain.MemberVO;

public interface LoginMapper {

  
  public MemberVO read(String userid);
  
  public void memberLogin(MemberVO mvo);
}
