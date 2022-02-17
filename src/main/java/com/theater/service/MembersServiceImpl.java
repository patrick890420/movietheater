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
	public void register(MemberVO mvo) {
		mmapper.MemberInsert(mvo);
		
	}

  @Override
  public int idChk(String id) {
    return mmapper.idChk(id);
  }


}


