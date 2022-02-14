package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;
import com.theater.mapper.NoticeMapper;

@Repository
public class NoticeServiceImpl implements NoticeService {

  
//  자동주입
  private NoticeMapper mapper;

  @Override
  public List<NoticeVO> getList(Criteria cri) {
    return mapper.getList(cri);
  }
  
//  검색결과view page
  @Override
  public NoticeVO view(int nt_cd) {
    mapper.view(nt_cd);
    return mapper.view(nt_cd);
  }

//조회수
  @Override
  public void viewcount(int nt_cd) {
    mapper.viewcount(nt_cd);
  }

//전체 레코드
//@Override
//public int getTotalcount(Criteria cri) {
//  return mapper.getTotalcount(cri);
//  
//}

//page 이전 다음
@Override
public NoticeVO nextPage(int nt_cd) {
  mapper.nextPage(nt_cd);
  return mapper.nextPage(nt_cd);
}

@Override
public NoticeVO prevPage(int nt_cd) {
  mapper.prevPage(nt_cd);
  return mapper.prevPage(nt_cd);
}

  
  

}//class
