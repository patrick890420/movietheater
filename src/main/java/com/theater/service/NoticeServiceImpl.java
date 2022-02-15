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

//  @Override
//  public List<NoticeVO> getList(Criteria cri) {
//    return mapper.getListWithPaging(cri);
//  }
  
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



}//class
