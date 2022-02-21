package com.theater.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MemberVO;
import com.theater.mapper.LoginMapper;
import com.theater.mapper.MembersMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MembersServiceImpl implements MembersService {
  
	@Setter(onMethod_ = @Autowired)
	private MembersMapper mmapper;
	
	 @Setter(onMethod_ = @Autowired)
	  private LoginMapper lmapper;

	@Override
	public void register(MemberVO mvo) {
		mmapper.MemberInsert(mvo);
		
	}

  @Override
  public int idChk(String userid) {
    return mmapper.idChk(userid);
  }
  
  @Override
  public MemberVO memberLogin(MemberVO mvo){
      
      lmapper.memberLogin(mvo);
      return mvo;

  }
  
  @Override
  public MemberVO selectMember(String userid) {
     MemberVO mvo = mmapper.selectMember(userid);
     return mvo;
  }
  
  @Override
  public void memberUpdate (MemberVO mvo) {
    mmapper.memberUpdate(mvo);

  }
  


}


