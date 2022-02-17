package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;
import com.theater.mapper.NoticeMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

  
//  자동주입
  private NoticeMapper nmapper;

//admin
  @Override
  public void noticeInsert(NoticeVO nvo) {
    nmapper.noticeInsert(nvo);
    
  }
  
//전체 래코드
  @Override
  public int getTotal(Criteria cri){
    return nmapper.getTotal(cri);
  }

  
  @Override
  public List<NoticeVO> getList(Criteria cri){
    return nmapper.getList(cri);
  }

//view page 
  @Override
  public NoticeVO read(int nt_cd) {
    nmapper.readCount(nt_cd);    //조회수
    return nmapper.read(nt_cd);
  }
    
  @Override
  public NoticeVO nextPage(int nt_cd) {
    return nmapper.nextPage(nt_cd);
  }
  @Override
  public NoticeVO prevPage(int nt_cd) {
    return nmapper.prevPage(nt_cd);
  }

  
  
}//class