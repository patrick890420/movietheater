package com.theater.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MemberVO;
import com.theater.mapper.MembersMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MembersServiceImpl implements MembersService {
  
	@Setter(onMethod_ = @Autowired)
	private MembersMapper mmapper;

  @Override
  public int idCheck(String id) {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public void register(MemberVO mvo) {
    // TODO Auto-generated method stub
    
  }
}


