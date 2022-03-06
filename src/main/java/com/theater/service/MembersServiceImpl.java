package com.theater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.CriteriaMyPage;
import com.theater.domain.MemberVO;
import com.theater.domain.ReListVO;
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
  
//  @Override
//  public String pwChk(String userpw) {
//    return mmapper.pwChk(userpw);
//  }
  
  @Override
  public void mypasspro(MemberVO mvo) {
    mmapper.mypasspro(mvo);
  }
  
  
  @Override
  public String selectPw(String userid) {
     return mmapper.selectPw(userid);
  }
  
  @Override
  public List<ReListVO> getRelist(CriteriaMyPage cri) {
    return mmapper.getRelist(cri); 
  }
  
  
  @Override
  public List<MemberVO> memberSelect() {
    return mmapper.memberSelect();
  }
  
  @Override
  public void adminDelete(String userid) {
    mmapper.adminDelete(userid);
  }
  
  @Override
  public void byebyespro(MemberVO mvo) {
    mmapper.byebyespro(mvo);
  }

  @Override
  public int getTotal(CriteriaMyPage cri) {
   
    return mmapper.getTotal(cri);
  }

  


}


