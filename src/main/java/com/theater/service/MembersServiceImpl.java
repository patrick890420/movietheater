package com.theater.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MemberVO;
import com.theater.mapper.MembersMapper;

@Service
public class MembersServiceImpl implements MembersService {
  
	@Autowired
	private MembersMapper mapper;
	
	public void Memberinsert(MemberVO mvo) throws Exception {
		
		//MembersMapper.Memberinsert(mvo);
	}
	
	public int idChk(MemberVO member) throws Exception {
	  int result = MembersService.idChk(member);
	  return result;
	}
	

  }


